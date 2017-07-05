package com.banksys;

import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.VelocityException;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.ui.velocity.VelocityEngineFactory;

import javax.sql.DataSource;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by Lakshitha on 01-Jun-17.
 *
 */
@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.banksys"})
@EnableJpaRepositories
@EnableJpaAuditing(dateTimeProviderRef = "dateTimeProvider", auditorAwareRef = "auditorProvider")
public class RootConfig {
    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");

        //OPENSHIFT MYSQL
//        String databaseURL = System.getenv("OPENSHIFT_MYSQL_DB_HOST");
//        String databasePort = System.getenv("OPENSHIFT_MYSQL_DB_PORT");
//        dataSource.setUrl("jdbc:mysql://" + databaseURL + ":" + databasePort + "/banksys");
//        dataSource.setUsername("adminptmBQyu");
//        dataSource.setPassword("gHU1pRlfjUhj");

        //LOCAL MYSQL CONFIG
        dataSource.setUrl("jdbc:mysql://localhost/banksys");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
        LocalContainerEntityManagerFactoryBean localContainerEntityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
        localContainerEntityManagerFactoryBean.setDataSource(dataSource());
        localContainerEntityManagerFactoryBean.setJpaVendorAdapter(jpaVendorAdapter());
        localContainerEntityManagerFactoryBean.setJpaProperties(hibernateProperties());
        localContainerEntityManagerFactoryBean.setPackagesToScan("com.banksys.admin.datalayer.entity", "com.banksys.ebank.datalayer.entity");
        return localContainerEntityManagerFactoryBean;
    }

    @Bean
    public Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.show_sql", true);
        properties.put("hibernate.enable_lazy_load_no_trans", true);
        return properties;
    }

    @Bean
    public JpaVendorAdapter jpaVendorAdapter() {
        HibernateJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
        adapter.setDatabase(Database.MYSQL);
        adapter.setShowSql(true);
        adapter.setGenerateDdl(true);
        adapter.setDatabasePlatform("org.hibernate.dialect.MySQLDialect");
        return adapter;
    }

    @Bean
    public JpaTransactionManager transactionManager() {
        JpaTransactionManager transactionManager = new JpaTransactionManager();
        transactionManager.setEntityManagerFactory(entityManagerFactory().getObject());
        return transactionManager;
    }

    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();

        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("alphaaliancebank@gmail.com");
        mailSender.setPassword("Redsnapper123#");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        return mailSender;
    }

    @Bean
    public VelocityEngine getVelocityEngine() throws VelocityException, IOException {
        VelocityEngineFactory factory = new VelocityEngineFactory();
        Properties props = new Properties();
        props.put("resource.loader", "class");
        props.put("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        factory.setVelocityProperties(props);
        return factory.createVelocityEngine();
    }
}
