package com.lfernandes;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
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

@WebServlet("/validate")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        try {
            String resultado = validarComApiColecao(usuario, senha);
            if ("success".equals(resultado)) {
                response.sendRedirect("inicial/principal.jsp");
            } else {
                request.setAttribute("errorUsuario", resultado);
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorUsuario", "Erro na comunicação com a API");
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

            try (CloseableHttpResponse response = httpClient.execute(httpPost)) {
                int statusCode = response.getCode();
                BufferedReader reader = new BufferedReader(new InputStreamReader(response.getEntity().getContent()));
                StringBuilder responseString = new StringBuilder();
                String line;
                while ((line = reader.readLine()) != null) {
                    responseString.append(line);
                }
                String responseBody = responseString.toString();
                System.out.println("Response Body: " + responseBody);

                if (statusCode == 200) {
                    Response apiResponse = objectMapper.readValue(responseBody, Response.class);
                    if (apiResponse.getError() == null) {
                        return "success";
                    } else {
                        return apiResponse.getError();
                    }
                } else {
                    Response apiResponse = objectMapper.readValue(responseBody, Response.class);
                    return apiResponse.getError() != null ? apiResponse.getError() : "Falha na autenticação: " + statusCode;
                }
            }
        }
    }

    private static class UsuarioSenha {
        private String username;
        private String password;

        public UsuarioSenha(String username, String password) {
            this.username = username;
            this.password = password;
        }

        public String getUsername() {
            return username;
        }

        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }

        public void setPassword(String password) {
            this.password = password;
        }
    }

    private static class Response {
        private String message;
        private String error;

        public String getMessage() {
            return message;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public String getError() {
            return error;
        }

        public void setError(String error) {
            this.error = error;
        }
    }
}
