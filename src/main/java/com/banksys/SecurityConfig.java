package com.banksys;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.savedrequest.NullRequestCache;
import org.springframework.security.web.session.HttpSessionEventPublisher;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import javax.sql.DataSource;

/**
 * Created by lakshithar on 6/18/2017.
 *
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {
    private final BankSysAuthLogoutHandler bankSysAuthLogoutHandler;
    private final BankSysAuthSuccessHandler bankSysAuthSuccessHandler;
    private final BankSysSessionTimeoutHandler bankSysSessionTimeoutHandler;
    private final DataSource dataSource;

    @Autowired
    public SecurityConfig(BankSysAuthLogoutHandler bankSysAuthLogoutHandler, BankSysAuthSuccessHandler bankSysAuthSuccessHandler,
                          BankSysSessionTimeoutHandler bankSysSessionTimeoutHandler, DataSource dataSource) {
        this.bankSysAuthLogoutHandler = bankSysAuthLogoutHandler;
        this.bankSysAuthSuccessHandler = bankSysAuthSuccessHandler;
        this.bankSysSessionTimeoutHandler = bankSysSessionTimeoutHandler;
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login").permitAll()
                .antMatchers("/layout/assets/**").permitAll()
                .antMatchers("/*").permitAll()
                .anyRequest().authenticated()
                .and().requestCache().requestCache(new NullRequestCache()).and()
                .formLogin().loginPage("/login").failureForwardUrl("/asdasds")
                .usernameParameter("username").passwordParameter("password").successHandler(bankSysAuthSuccessHandler)
                .and().rememberMe().rememberMeParameter("remember-me").rememberMeCookieName("my-remember-me").tokenValiditySeconds(86400)
                .and()
                .logout().invalidateHttpSession(true).deleteCookies("JSESSIONID")
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .logoutSuccessUrl("/login")
                .logoutSuccessHandler(bankSysAuthLogoutHandler)
                .and()
                .exceptionHandling().accessDeniedPage("/accessDenied")
                .and()
                .csrf()
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
                .sessionFixation().migrateSession()
                .invalidSessionUrl("/login?Invalid Session")
                .invalidSessionStrategy(bankSysSessionTimeoutHandler);

        http.headers().cacheControl().disable();
    }

    @Bean
    public HttpSessionEventPublisher httpSessionEventPublisher() {
        return new HttpSessionEventPublisher();
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource)
                .usersByUsernameQuery("SELECT username, password, enabled FROM user WHERE upper(username)=upper(?)");
//                .passwordEncoder(new ShaPasswordEncoder(256))
//                .passwordEncoder(new ShaPasswordEncoder(1))
//                .authoritiesByUsernameQuery("SELECT\n" +
//                        "                        u.USERNAME AS username,\n" +
//                        "                        a.AUTHORITY AS authority\n" +
//                        "                    FROM\n" +
//                        "                        USERS u,\n" +
//                        "                        USER_GROUPS ug,\n" +
//                        "                        GROUP_AUTHORITIES ga,\n" +
//                        "                        AUTHORITIES a\n" +
//                        "                    WHERE\n" +
//                        "                        upper(u.USERNAME) = upper(?) AND\n" +
//                        "                        u.USER_SEQ = ug.USER_SEQ AND\n" +
//                        "                        ug.GROUP_SEQ = ga.GROUP_SEQ AND\n" +
//                        "                        ga.AUTHORITY_SEQ = a.AUTHORITY_SEQ AND\n" +
//                        "                        ug.STATUS=1");

    }
}
