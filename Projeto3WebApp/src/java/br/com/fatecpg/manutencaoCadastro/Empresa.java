/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.manutencaoCadastro;

/**
 *
 * @author Leona
 */
public class Empresa {
    private String nomeEmpresa;
    private String nomeFantasia;
    private String nomeProprietario;
    private String Cnpj;
    private String endereco;
    private String email;
    private String telefone;

    /**
     *
     * @param nomeEmpresa
     * @param nomeFantasia
     * @param nomeProprietario
     * @param cnpj
     * @param Cnpj
     * @param endereco
     * @param email
     * @param telefone
     */
    public void setDados(String nomeEmpresa, String nomeFantasia, String nomeProprietario,
            String cnpj, String endereco, String email, String telefone){
        this.setNomeEmpresa(nomeEmpresa);
        this.setNomeFantasia(nomeFantasia);
        this.setNomeProprietario(nomeProprietario);
        this.setCnpj(cnpj);
        this.setEndereco(endereco);
        this.setEmail(email);
        this.setTelefone(telefone);
    }
    
    public String getNomeEmpresa() {
        return nomeEmpresa;
    }

    public void setNomeEmpresa(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
    }

    public String getNomeFantasia() {
        return nomeFantasia;
    }

    public void setNomeFantasia(String nomeFantasia) {
        this.nomeFantasia = nomeFantasia;
    }

    public String getNomeProprietario() {
        return nomeProprietario;
    }

    public void setNomeProprietario(String nomeProprietario) {
        this.nomeProprietario = nomeProprietario;
    }

    public String getCnpj() {
        return Cnpj;
    }

    public void setCnpj(String Cnpj) {
        this.Cnpj = Cnpj;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
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

