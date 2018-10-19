/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.manutencaoCadastro;

import java.util.ArrayList;

/**
 *
 * @author Leona
 */
public class Db {
    private static final ArrayList<Pessoa> PESSOAS = new ArrayList<>();
    private static final ArrayList<Empresa> EMPRESAS = new ArrayList<>();
    private static final ArrayList<Veiculo> VEICULOS = new ArrayList<>();
    private static Boolean firstTime = false;
    
    public static ArrayList<Pessoa> getPessoa(){
        if(PESSOAS.isEmpty() && firstTime==false){
            Pessoa p1 = new Pessoa();
            p1.setDados("Leonardo", "213.312.231-32", "leonardo_santos_97@hotmail.com", "(13)98812-3212");
            PESSOAS.add(p1);
            
            Pessoa p2 = new Pessoa();
            p2.setDados("Nicolas", "546.645.564-65", "Nicolas.Almeida@gmail.com", "(13)98845-6545");
            PESSOAS.add(p2);
            
            Pessoa p3 = new Pessoa();
            p3.setDados("Thyago", "879.978.897-98", "thyago-Santos@gmail.com", "(13)99878-9878");
            PESSOAS.add(p3);
            
            firstTime=true;
        }
        return PESSOAS;
    }
     public static ArrayList<Veiculo> getVeiculo(){
        if(VEICULOS.isEmpty()){
            Veiculo v1 = new Veiculo();
            v1.setDados("QAA-333", "Fiat", "Urno", "Preto");
            VEICULOS.add(v1);
            
            Veiculo v2 = new Veiculo();
            v2.setDados("YPQ-444", "Volks", "Fox", "Vermelho");
            VEICULOS.add(v2);
            
            Veiculo v3 = new Veiculo();
            v3.setDados("VQX-555", "Honda", "Civic", "Prata");
            VEICULOS.add(v3);
            
            
        }
        return VEICULOS;
    }
     
    public static ArrayList<Empresa> getEmpresas(){
        if(EMPRESAS.isEmpty()){
            Empresa e1 = new Empresa();
            e1.setDados("Grupo Verdaz","Future Automóveis", "Mario Aquino","83.829.702/0032-88",
                    "Avenida Tomás Albuquerque, n.332 - Vila Nova - Porto de Galinhas - PE", "verdaz@future.com", "(87)8856-1723");
            EMPRESAS.add(e1);
            
            Empresa e2 = new Empresa();
            e1.setDados("Rezarsh Corp","Rezarsh Motors", "Marcello Wolfgang","23.930.725/8722-01",
                    "Alameda Moraes Moreira, n.777 - Alto Jardim - São Paulo - SP", "rezarch@wolf.com", "(11)99723-9723");
            EMPRESAS.add(e2);
            
            Empresa e3 = new Empresa();
            e1.setDados("Polde Inc.", "Polde", "José Müller","92.761.093/0004-10",
                    "Praça dos Exploradores, n.282 - Pompéia - Rio de Janeiro - PE", "pol@de.com", "(21)8856-1723");
            EMPRESAS.add(e3);
        }
        return EMPRESAS;
    }
     
}