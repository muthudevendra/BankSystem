package com.banksys;

import org.springframework.security.web.session.InvalidSessionStrategy;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by lakshithar on 6/19/2017.
 *
 */
@Service
public class BankSysSessionTimeoutHandler implements InvalidSessionStrategy {

    @Override
    public void onInvalidSessionDetected(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {

    }
}
