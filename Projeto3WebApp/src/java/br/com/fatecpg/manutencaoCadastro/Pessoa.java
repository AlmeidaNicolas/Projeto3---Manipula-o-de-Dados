/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.manutencaoCadastro;

import javafx.scene.layout.Region;

/**
 *
 * @author Leona
 */
public class Pessoa {
    private String nome, cpf, email, telefone;
    
    public void setDados(String nome, String cpf, String email, String telefone){
        this.setNome(nome);
        this.setCpf(cpf);
        this.setEmail(email);
        this.setTelefone(telefone);
    }
    
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getTelefone() {
        return telefone;
    }
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
}
