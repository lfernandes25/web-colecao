package com.lfernandes.controller;

import com.lfernandes.dto.Response;
import com.lfernandes.exception.ApiException;
import com.lfernandes.service.LoginService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/validate")
public class LoginServlet extends HttpServlet {
    private LoginService loginService = new LoginService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        try {
            Response apiResponse = loginService.validarLogin(usuario, senha);

            if (apiResponse.getError() == null) {
                // Login bem-sucedido
                response.sendRedirect("inicial/principal.jsp");
            } else {
                // Login falhou
                String field = apiResponse.getField();
                if (field == null) {
                    request.setAttribute("errorGeral", apiResponse.getError());
                } else if (field.equals("username")) {
                    request.setAttribute("errorUsuario", apiResponse.getError());
                } else if (field.equals("password")) {
                    request.setAttribute("errorSenha", apiResponse.getError());
                } else {
                    request.setAttribute("errorGeral", apiResponse.getError());
                }

                // Mantém os valores dos campos preenchidos
                request.setAttribute("usuario", usuario);
                request.setAttribute("senha", senha);

                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (ApiException e) {
            e.printStackTrace();
            request.setAttribute("errorGeral", "Erro na comunicação com a API");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}
