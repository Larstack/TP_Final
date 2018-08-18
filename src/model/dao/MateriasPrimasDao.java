package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.dto.MateriasPrimas;
import model.dto.Productos;
import utils.DbConnection;

public class MateriasPrimasDao {

	public MateriasPrimas loadMateriaPrima(String codigoMateriaPrima) {
		
		MateriasPrimas materiaPrima = null;

		Connection conn = DbConnection.getConnection();
		ResultSet rs = null;
		Statement stmt = null;
		
		String sql = "SELECT " +
				"codigo, " +
				"descripcion " +
				"FROM materia_prima "
				+ "WHERE codigo = '" + codigoMateriaPrima + "'";

		try {
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			if(rs != null && rs.next()) {
				
				materiaPrima = new MateriasPrimas();

				materiaPrima.setCodigo(rs.getString("codigo"));
				materiaPrima.setDescripcion(rs.getString("descripcion"));
			}
		} catch (SQLException e) {

			e.printStackTrace();

		}finally {
			
			DbConnection.cerrarConexion(rs, stmt, conn);
		}
		
		return materiaPrima;
	}

	
}