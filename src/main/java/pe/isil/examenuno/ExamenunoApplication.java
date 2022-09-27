package pe.isil.examenuno;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.*;

@SpringBootApplication
public class ExamenunoApplication {

	public static void main(String[] args) throws Exception {
		SpringApplication.run(ExamenunoApplication.class, args);
		//Cargar Driver
		Class.forName("com.mysql.cj.jdbc.Driver");
		//Crear la conexion
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examenep1", "root", "root");
//---------------------------------------------------------------------------------------------------------------------------------

		//LLAMAR AL METODO
		//testStatement(con);
		testPreparedStament(con);
		//testCallableStatement(con);

//---------------------------------------------------------------------------------------------------------------------------------
		//CERRAR CONEXION
		con.close();
	}



	//---------------------------------------------------------------------------------------------------------------------------------
	//ELIMINAR REGISTRO
	public static void testStatement(Connection con) throws Exception {
		//Crear statement
		Statement stStatement = con.createStatement();
		int affectedRows = stStatement.executeUpdate("DELETE FROM ALCALDE where id=4");
		System.out.println("FILAS AFECTADAS: " + affectedRows);
	}


	//-----------------------------------------------------------------------------------------------------------------
	//ACTUALIZAR NAME DEL REGISTRO
	public static void testPreparedStament(Connection con) throws Exception {
		PreparedStatement preparedStatement = con.prepareStatement("UPDATE ALCALDE SET name=? where id=?" );
		preparedStatement.setString(1, "Rafael");
		preparedStatement.setInt(2,5);
		int affectedRows = preparedStatement.executeUpdate();
		System.out.println("FILAS AFECTADAS: " + affectedRows);
	}


	//-----------------------------------------------------------------------------------------------------------------
	//LISTAR TOTAL DEL REGISTRO (7 CANDIDATOS)
	public static void testCallableStatement(Connection con) throws Exception{
		CallableStatement callableStatement= con.prepareCall("{call getAllAlcalde()}");
		ResultSet resultSet = callableStatement. executeQuery();
		while (resultSet.next()){
			System.out.println(resultSet.getString("name") + " " +
								resultSet.getString("lastname") + " " +
								resultSet.getString("username") + " " +
								resultSet.getString("pass") + " " +
								resultSet.getString("enable"));
		}
	}
}