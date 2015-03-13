package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ControlDB
{
	
	public int count(String sql){
		int i=0;
		try{
			Connection conn=this.getConn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			i=rs.getInt(1);
			conn.close();
		}
		catch(Exception ex){
			ex.printStackTrace();
			i=-1;
		}
		return i;
	}
	
	public int count(String sql,Connection conn){
		int i=0;
		try{
			Statement stmt=conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			rs.next();
			i=rs.getInt(1);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	}
	
	
	public void closeConn(Connection conn)
	{
		if(conn != null){
			try
			{
				conn.close();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
				System.out.println("close connection error!");
			}
		conn=null;
		}
		else
		{
			System.out.println("connection is null");
		}
	}


	public  static Connection getConn(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://127.0.0.1:3306/witkey";
			Connection conn= DriverManager.getConnection(url,"root","root");
			return conn;
		}
		catch(Exception ex){
			ex.printStackTrace();
			return null;
		}
	}

	public int JX(String sql){
	  	int i=0;
	  try{
		  Connection conn=ControlDB.getConn();
		  Statement stmt=conn.createStatement();
		  i=stmt.executeUpdate(sql);
		  System.out.println(sql);
		  conn.close();
	  }
	  catch(Exception ex){
		  ex.printStackTrace();
		 // i=-1;
	  }
	  return i;
	  }
	  
	public int JX(String sql,Connection conn){
		int i=0;
		try{
			Statement stmt = conn.createStatement();
			i = stmt.executeUpdate(sql);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	}
	
	public int delete(String sql){
		int i = 0;
		try{
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			i = stmt.executeUpdate(sql);
			this.closeConn(conn);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	} 
	
	public int insert(String sql){
		int i=0;
		try{
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			i=stmt.executeUpdate(sql);
			conn.close();
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	}
	
	//**************************************以下是添加用户返回用户编号的方法**********************************//
	
	public int insertAndGetUserId(String sql){
		int i=0;
		int userId = 0;
		
		try{
			Connection conn = this.getConn();
			conn.setAutoCommit(false);
			Statement stmt = conn.createStatement();
			i=stmt.executeUpdate(sql);
			ResultSet rs = stmt.executeQuery("select last_insert_id()");
			if(rs.next())
			{
				userId = rs.getInt(1);
			}
			conn.close();
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return userId;
	}
	//**************************************添加用户返回用户编号的方法**********************************//
	
	public int insert(String sql,Connection conn){
		int i= 0;
		try{
			Statement stmt = conn.createStatement();
			i=stmt.executeUpdate(sql);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
		
	}
	
	public int decete(String sql,Connection conn){
		int i=0;
		try{
			Statement stmt = conn.createStatement();
			i=stmt.executeUpdate(sql);
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	}
	
	public static void main(String args[]){
		ControlDB controldb=new ControlDB();
		ControlDB.getConn();
		controldb.closeConn(ControlDB.getConn());
		
	}
	public int getListInsertId(Connection conn){
		int i=0;
		try{
			Statement stmt=conn.createStatement();
			String sql="select last_insert_id()";
			ResultSet rs=stmt.executeQuery(sql);
			System.out.println(sql);
			if(rs.next()){
				i=rs.getInt(1);
			}else{
				i=-1;
			}
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		System.out.println("获得id"+i);
		return i;
	}
	public String getString(String sql,Connection conn){
		String s="";
		try{
					
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			s=rs.getString(1);
			
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return s;
		
	}
	public int setPic(int id,String url){
		String sql="update news set picture='"+url+"'where id="+id;
		return this.JX(sql);
	}

	
	public String getString(String sql){
		String s="";
		try{
			Connection conn=this.getConn();		
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			rs.next();
			s=rs.getString(1);
			this.closeConn(conn);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return s;
		
	}
	/*更新 2012-6-30 liu*/
	public int update(String sql){
		int i = 0;
		try{
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			i=stmt.executeUpdate(sql);
			conn.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return i;
	}


}
