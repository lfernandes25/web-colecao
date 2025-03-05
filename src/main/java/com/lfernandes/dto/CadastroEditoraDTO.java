package com.lfernandes.dto;

public class CadastroEditoraDTO {
    private String nomeEditora;

    // Construtor padrão (necessário para desserialização JSON)
    public CadastroEditoraDTO() {}

    // Construtor com parâmetros
    public CadastroEditoraDTO(String nomeEditora) {
        this.nomeEditora = nomeEditora;
    }

    // Getters e Setters
    public String getNomeEditora() {
        return nomeEditora;
    }

    public void setNomeEditora(String nomeEditora) {
        this.nomeEditora = nomeEditora;
    }

    @Override
    public String toString() {
        return "CadastroEditoraDTO{" +
                "nomeEditora='" + nomeEditora + '\'' +
                '}';
    }
}