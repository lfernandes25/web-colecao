package com.lfernandes.controller;

import com.lfernandes.service.EditoraService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cadastrarEditora")
public class EditoraServlet extends HttpServlet {
    private EditoraService editoraService = new EditoraService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nomeEditora = request.getParameter("nomeEditora");

        try {
            String resultado = editoraService.cadastrarEditora(nomeEditora);
            if ("success".equals(resultado)) {
                request.setAttribute("successMessage", "Editora cadastrada com sucesso");
                request.setAttribute("nomeEditora", ""); // Limpa o campo nomeEditora
            } else {
                request.setAttribute("errorMessage", resultado);
                request.setAttribute("nomeEditora", nomeEditora); // Mantém o campo preenchido
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Erro na comunicação com a API");
            request.setAttribute("nomeEditora", nomeEditora); // Mantém o campo preenchido
        }

        request.getRequestDispatcher("/cadastro/cadastroDeEditora.jsp").forward(request, response);
    }
}
