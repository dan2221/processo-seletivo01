/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DTO;

/**
 *
 * @author Daniel Oliveira
 */
public class LivroDTO {
    private int id_livro;
    private String nome_livro;

    /**
     * @return the id_livro
     */
    public int getId_livro() {
        return id_livro;
    }

    /**
     * @param id_livro the id_livro to set
     */
    public void setId_livro(int id_livro) {
        this.id_livro = id_livro;
    }

    /**
     * @return the nome_livro
     */
    public String getNome_livro() {
        return nome_livro;
    }

    /**
     * @param nome_livro the nome_livro to set
     */
    public void setNome_livro(String nome_livro) {
        this.nome_livro = nome_livro;
    }
}
