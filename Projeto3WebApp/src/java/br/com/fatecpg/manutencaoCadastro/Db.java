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
}