/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import br.com.DTO.LivroDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author
 */
public class LivroDAO {

    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<LivroDTO> lista = new ArrayList<>();
    
    /**
     * Add a new register to the database
     * @param objLivroDTO
     * @throws ClassNotFoundException 
     */
    public void CadastrarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException {
        String sql = "INSERT INTO livro (nome_livro) VALUES (?)";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objLivroDTO.getNome_livro());

            pstm.execute();
            pstm.close();
        } catch (Exception e) {

        }
    }

    /**
     * Delete a register from database
     * @param objLivroDTO
     * @throws ClassNotFoundException 
     */
    public void ExcluirLivro(LivroDTO objLivroDTO) throws ClassNotFoundException {
        String sql = "DELETE FROM livro WHERE id_livro = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            pstm.setInt(1, objLivroDTO.getId_livro());

            pstm.execute();
            pstm.close();
        } catch (Exception e) {

        }
    }

    /**
     * Edit a register from database
     * @param objLivroDTO
     * @throws ClassNotFoundException 
     */
    public void AlterarLivro(LivroDTO objLivroDTO) throws ClassNotFoundException {
        // Each Interrogation means a paramter. In this case there is 2 paramters.
        String sql = "UPDATE livro SET nome_livro = ? WHERE id_livro = ?";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);

            // Set String is using the 1st paramter.
            pstm.setString(1, objLivroDTO.getNome_livro());
            // SetInt is using the 2nd paramter.
            pstm.setInt(2, objLivroDTO.getId_livro());

            pstm.execute();
            pstm.close();
        } catch (Exception e) {

        }
    }

    /**
     * Get all registers from database
     * @return AttayList object
     */
    public ArrayList<LivroDTO> PesquisarLivro() {
        String sql = "SELECT * FROM livro";
        con = new ConexaoDAO().conexaoBD();

        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery(sql);

            // Reading through all rows in the table
            while (rs.next()) {
                LivroDTO objLivroDTO = new LivroDTO();
                objLivroDTO.setId_livro(rs.getInt("id_livro"));
                objLivroDTO.setNome_livro(rs.getString("nome_livro"));

                lista.add(objLivroDTO);
            }

        } catch (SQLException e) {
        }
        return lista;
    }
}
