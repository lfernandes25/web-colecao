package com.lfernandes.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lfernandes.dto.CadastroEditoraDTO;
import com.lfernandes.dto.Response;
import org.apache.hc.client5.http.classic.methods.HttpPost;
import org.apache.hc.client5.http.impl.classic.CloseableHttpClient;
import org.apache.hc.client5.http.impl.classic.CloseableHttpResponse;
import org.apache.hc.client5.http.impl.classic.HttpClients;
import org.apache.hc.core5.http.io.entity.StringEntity;
import org.apache.log4j.Logger;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class EditoraService {
    private static final Logger logger = Logger.getLogger(EditoraService.class);

    public String cadastrarEditora(String nomeEditora) throws Exception {
        try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
            HttpPost httpPost = new HttpPost("http://localhost:8080/api/cadastroEditora");
            httpPost.setHeader("Content-Type", "application/json");

            // Usando o DTO para enviar os dados
            CadastroEditoraDTO dto = new CadastroEditoraDTO(nomeEditora);
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

                Response apiResponse = objectMapper.readValue(responseBody, Response.class);
                if (statusCode == 200) {
                    if (apiResponse.getError() == null) {
                        return "success";
                    } else {
                        return apiResponse.getError();
                    }
                } else {
                    return apiResponse.getError() != null ? apiResponse.getError() : "Falha no cadastro: " + statusCode;
                }
            }
        }
    }
}
