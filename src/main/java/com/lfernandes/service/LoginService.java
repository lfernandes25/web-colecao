package com.lfernandes.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lfernandes.dto.Response;
import com.lfernandes.dto.UsuarioSenhaDTO;
import com.lfernandes.exception.ApiException;
import org.apache.hc.client5.http.classic.methods.HttpPost;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.CloseableHttpResponse;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.core5.http.io.entity.StringEntity;
import org.apache.log4j.Logger;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class LoginService {
    private static final Logger logger = Logger.getLogger(LoginService.class);

    public Response validarLogin(String usuario, String senha) throws ApiException {
        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
            HttpPost httpPost = new HttpPost("http://localhost:8080/api/login");
            httpPost.setHeader("Content-Type", "application/json");

            // Usando o DTO para enviar os dados
            UsuarioSenhaDTO dto = new UsuarioSenhaDTO(usuario, senha);
            ObjectMapper objectMapper = new ObjectMapper();
            String json = objectMapper.writeValueAsString(dto);
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

                // Desserializa a resposta da API para a classe Response
                return objectMapper.readValue(responseBody, Response.class);
            }
        } catch (Exception e) {
            throw new ApiException("Erro na comunicação com a API", e);
        }
    }
}
