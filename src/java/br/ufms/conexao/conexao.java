/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.ufms.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author thiago
 */
public class conexao {
     public static Connection getConexao() throws SQLException{
		try {
			Class.forName("com.postgreSQL.jdbc.Driver");
			System.out.print("conectou");
			return DriverManager.getConnection("jdbc:postgreSQL://localhost/Noticiario","postgres","root");
		}  catch (SQLException e) {
			throw new SQLException(e);
		}catch (ClassNotFoundException e1) {
			throw new SQLException(e1);
			}	
	
	}
    
}


