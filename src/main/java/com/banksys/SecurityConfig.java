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
    private final DataSource dataSource;

    @Autowired
    public SecurityConfig(BankSysAuthLogoutHandler bankSysAuthLogoutHandler,
                          BankSysAuthSuccessHandler bankSysAuthSuccessHandler,
                          DataSource dataSource) {
        this.bankSysAuthLogoutHandler = bankSysAuthLogoutHandler;
        this.bankSysAuthSuccessHandler = bankSysAuthSuccessHandler;
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/login").permitAll()
                .antMatchers("/layout/assets/**").permitAll()
                .antMatchers("/*").permitAll()
                .antMatchers("/admin").hasAuthority("Admin@Admin_VIEW")
                .anyRequest().authenticated()
                .and()
                .requestCache().requestCache(new NullRequestCache()).and()
                .formLogin().loginPage("/login").failureForwardUrl("/login?error")
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
                .csrf();

        http.headers().cacheControl().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth)
            throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery(
                        "SELECT USERNAME, PASSWORD, TRUE FROM USER WHERE USERNAME=?")
                .passwordEncoder(new ShaPasswordEncoder(1))
                .authoritiesByUsernameQuery(
                        "SELECT USERNAME AS username, AUTHORITY_NAME AS authority " +
                                "FROM USER U, " +
                                "USER_TYPE UT, " +
                                "USER_TYPE_AUTHORITY UA, " +
                                "AUTHORITY A " +
                                "WHERE U.USER_TYPE_ID = UT.USER_TYPE_ID " +
                                "AND UA.USER_TYPE_ID = UT.USER_TYPE_ID " +
                                "AND UA.AUTHORITY_ID = A.AUTHORITY_ID " +
                                "AND U.USERNAME=?");
    }
}

