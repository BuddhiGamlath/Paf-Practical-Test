package model;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Patient {
	
	//A common method to connect to the DB
		private Connection connect()
		{
			Connection con = null;
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				//DB Connection
				con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/pafhospitalmanagementdb2020?serverTimezone=UTC", "root" , "");
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
	
			return con;
		} 
		// reading an Patient -------------------------
		public String readPatient()
		{
			String output = "";
			try
			{
				Connection con = connect();
				if (con == null)
				{
					return "Error while connecting to the database for reading.";
				}
				// Prepare the html table to be displayed
				output = "<table border='1'><tr><th>PatientName</th> <th>Email</th><th>Phone</th>"+ "<th>Password</th><th>Update</th><th>Remove</th></tr>";
				String query = "select * from patient";
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				// iterate through the rows in the result set
				while (rs.next())
				{
					String PID = Integer.toString(rs.getInt("PID"));
					String PatientName = rs.getString("PatientName");
					String Email = rs.getString("Email");
					String Phone = rs.getString("Phone");
					String Password = rs.getString("Password"); 

					// Add into the html table
					output += "<tr><td><input id='hidPatientIDUpdate'name='hidPatientIDUpdate' type='hidden'value='" + PID + "'>" + PatientName + "</td>";output += "<td>" + Email + "</td>";output += "<td>" + Phone + "</td>";output += "<td>" + Password + "</td>";
					// buttons
					output += "<td><input name='btnUpdate' type='button'"+ "value='Update'"+"class='btnUpdate btn btn-secondary'></td>"+"<td><input name='btnRemove' type='button'"+" value='Remove'"+"class='btnRemove btn btn-danger' data-pid='"+ PID + "'>" + "</td></tr>";
				}
				con.close();
				// Complete the html table
				output += "</table>";
			}
			catch (Exception e)
			{
				output = "Error while reading the Patient.";
				System.err.println(e.getMessage());
			}
			return output;
		}
		//inserting---------------------
		public String insertPatient(String PatientName, String Email,String Phone, String Password)
		{
			String output = "";
			try
			{
				Connection con = connect();
				if (con == null)
				{
					return "Error while connecting to the database for inserting.";
				}
				// create a prepared statement
				String query = " insert into patient(`PatientName`,`Email`,`Phone`,`Password`)"+ " values (?, ?, ?, ?)";
				PreparedStatement preparedStmt = con.prepareStatement(query);
				// binding values
				
				preparedStmt.setString(1, PatientName);
				preparedStmt.setString(2, Email);
				preparedStmt.setString(3, Phone);
				preparedStmt.setString(4, Password);
				// execute the statement
				preparedStmt.execute();
				
				 System.out.print("successfuly inserted");
				 
				con.close();
				String newPatients = readPatient();
				output = "{\"status\":\"success\", \"data\": \"" + newPatients + "\"}";
			}
			catch (Exception e)
			{
				output = "{\"status\":\"error\", \"data\":\"Error while inserting the Patient.\"}";
				System.err.println(e.getMessage());
			}
			return output;
		}
		//update Patient
		public String updatePatient(String PID, String PatientName, String Email,String Phone, String Password)
		{
			String output = "";
			try
			{
				Connection con = connect();
				if (con == null)
				{
					return "Error while connecting to the database for updating.";
				}
				// create a prepared statement
				String query = "UPDATE patient SET PatientName=?,Email=?,Phone=?,Password=? WHERE PID=?";
				PreparedStatement preparedStmt = con.prepareStatement(query);
				// binding values
				preparedStmt.setString(1, PatientName);
				preparedStmt.setString(2, Email);
				preparedStmt.setString(3, Phone);
				preparedStmt.setString(4, Password);
				preparedStmt.setInt(5, Integer.parseInt(PID));
				// execute the statement
				preparedStmt.execute();
				con.close();
				String newPatients = readPatient();
				output = "{\"status\":\"success\", \"data\": \"" +  newPatients + "\"}";
			}
			catch (Exception e)
			{
				output = "{\"status\":\"error\", \"data\":\"Error while updating the Patient.\"}";
				System.err.println(e.getMessage());
			}
			return output;
		}
		//delete Patient------------------------
		public String deletePatient(String PID) {
			String output = "";
			try {
				Connection con = connect();
				if (con == null) {
					return "Error while connecting to the database for deleting.";
				}
				// create a prepared statement
				String query = "delete from patient where PID=?";
				PreparedStatement preparedStmt = con.prepareStatement(query);
				// binding values
				preparedStmt.setInt(1, Integer.parseInt(PID));
				// execute the statement
				preparedStmt.execute();
				con.close();
				//output = "Deleted successfully";
				String newPatients = readPatient();
				output = "{\"status\":\"success\", \"data\": \"" + newPatients + "\"}";
			} catch (Exception e) {
				//output = "Error while deleting the Patient,,.";
				output = "{\"status\":\"error\", \"data\":\"Error while deleting the Patient.\"}";
				
				System.err.println(e.getMessage());
			}
			return output;
		}

}
