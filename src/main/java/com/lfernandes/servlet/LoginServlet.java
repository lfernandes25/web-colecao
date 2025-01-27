package com.lfernandes.servlet;

import com.lfernandes.model.Response;
import com.lfernandes.model.UsuarioSenha;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serial;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.hc.client5.http.classic.methods.HttpPost;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.CloseableHttpResponse;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.core5.http.io.entity.StringEntity;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.log4j.Logger;

@WebServlet("/validate")
public class LoginServlet extends HttpServlet {
    @Serial
    private static final long serialVersionUID = 1L;
    private static final Logger logger = Logger.getLogger(LoginServlet.class);
    private String field;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        try {
            String resultado = validarComApiColecao(usuario, senha);
            if ("success".equals(resultado)) {
                response.sendRedirect("inicial/principal.jsp");
            } else {
                request.setAttribute(field, resultado);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorGeral", "Erro na comunicação com a API");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    private String validarComApiColecao(String usuario, String senha) throws Exception {
        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
            HttpPost httpPost = new HttpPost("http://localhost:8080/api/login");
            httpPost.setHeader("Content-Type", "application/json");

            ObjectMapper objectMapper = new ObjectMapper();
            String json = objectMapper.writeValueAsString(new UsuarioSenha(usuario, senha));
            httpPost.setEntity(new StringEntity(json));

            // Logar a requisição enviada para a API
            logger.info("Enviando requisição para a API com dados: " + json);

            try (CloseableHttpResponse response = httpClient.execute(httpPost)) {
                int statusCode = response.getCode();
                BufferedReader reader = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
                StringBuilder responseString = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    responseString.append(line);
                }
                String responseBody = responseString.toString();
                logger.info("Response Body: " + responseBody);

                Response apiResponse = objectMapper.readValue(responseBody, Response.class);
                if (statusCode == 200) {
                    if (apiResponse.getError() == null) {
                        return "success";
                    } else {
                        if(apiResponse.getField() == null){
                            field = "errorGeral";
                        }else if(apiResponse.getField().equals("username")){
                            field = "errorUsuario";
                        } else if (apiResponse.getField().equals("password")) {
                            field = "errorSenha";
                        } else {
                            field = "errorGeral";
                        }

                        return apiResponse.getError();
                    }
                } else {
                    return apiResponse.getError() != null ? apiResponse.getError() : "Falha na autenticação: " + statusCode;
                }
            }
        }
    }
}
