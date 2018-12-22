package com.smxy.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {
    @Override
    public void destroy() {
        // TODO Auto-generated method stub

    }

    @Override
    public void doFilter(ServletRequest servletRequest,
                         ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        // TODO Auto-generated method stub

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String path = request.getServletPath();
        Object user=request.getSession().getAttribute("user");
        if("/login.jsp".equals(path) ){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }else{
            if(user!=null){
                filterChain.doFilter(servletRequest, servletResponse);
                return;
            }else{
                response.sendRedirect(request.getContextPath()+"/login.jsp");
                return;
            }
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
}
