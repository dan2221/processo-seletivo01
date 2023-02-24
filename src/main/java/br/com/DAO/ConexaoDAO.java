/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author
 */
public class ConexaoDAO {

    // Realizar conexão com o banco de dados
    public Connection conexaoBD() {
        Connection con = null;
        try {
            // Referência ao driver de conexão.
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/sistemabiblioteca?user=root&password=";
            con = DriverManager.getConnection(url);
        } catch (Exception e) {
            out.print(e);
        }
        return con;
    }
}
