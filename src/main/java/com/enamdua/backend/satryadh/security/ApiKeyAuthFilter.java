package com.enamdua.backend.satryadh.security;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Component
public class ApiKeyAuthFilter extends OncePerRequestFilter {
    @Value("59d9ae4cb202f3bec60a977c6dd704862c221f82")
    private String apiKey;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String requestApiKey = request.getHeader("api-key");
        if (apiKey.equals(requestApiKey)) {
            filterChain.doFilter(request, response);
        } else {
            Map responseMap = new HashMap();
            responseMap.put("code", "VALIDATION_ERROR");
            responseMap.put("description", "Authorization is a required parameter.");
            String json = new ObjectMapper().writeValueAsString(responseMap);
            response.setStatus(HttpStatus.BAD_REQUEST.value());
            response.setContentType("application/json");
            response.getWriter().write(json);
            response.flushBuffer();
        }
    }
}
