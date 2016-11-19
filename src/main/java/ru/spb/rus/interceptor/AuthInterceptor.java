package ru.spb.rus.interceptor;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by gleb on 19.11.16.
 */
public class AuthInterceptor extends HandlerInterceptorAdapter {

    private static final String login = "test";
    private static final String password = "test";

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {

        String login = request.getParameter("login");
        String password = request.getParameter("password");
        if ((login != null && password != null)
                && (this.login.equals(login) && this.password.equals(password))) {
            HttpSession session = request.getSession();
            session.setAttribute("isLogging", true);
            return true;
        } else {
            //response.sendRedirect(request.getContextPath() + "/projects");
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
        super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        super.afterCompletion(request, response, handler, ex);
    }

}
