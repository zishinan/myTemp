package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import bean.*;

public class ControlSmallcategory extends ControlDB{
	public int insertSmallcategory(Smallcategory sc,Connection conn){
		int i=0;
		try{
			
			String sql="insert into smallcategory " +
					"(smallname ,smallnote ,catid) " +
					"values(?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sc.getSmallName());
			pstmt.setString(2, sc.getSmallNote());
			pstmt.setInt(3, sc.getCatId());
			i=pstmt.executeUpdate();			

		}catch(Exception ex){
			ex.printStackTrace();
			i=-1;
		}
		return i;
	}
	public Collection getCats(String sql){
		   Collection c=new ArrayList();
		   try{
			   Connection conn=this.getConn();
			   Statement stmt = conn.createStatement();
			   ResultSet rs = stmt.executeQuery(sql);
			   while(rs.next()){
				   Smallcategory cat=new Smallcategory();
				   cat.setCatId(rs.getInt("catId"));
				   cat.setSmallId(rs.getInt("smallId"));
				   cat.setSmallName(rs.getString("smallName"));
				   cat.setSmallNote(rs.getString("smallNote"));
				   c.add(cat);
				   cat=null;
			   }
			   this.closeConn(conn);
			   
		   }
		   catch(Exception ex){
			   ex.printStackTrace();
		   }
		   return c;
	   }
	 public Smallcategory getCategory(String sql){
		 Smallcategory ca=new Smallcategory();
		   try{
			   Connection conn=this.getConn();
			   Statement stmt = conn.createStatement();
			   ResultSet rs = stmt.executeQuery(sql);
			   if(rs.next()){
				   ca.setCatId(rs.getInt("catId"));
				   ca.setSmallId(rs.getInt("smallId"));
				   ca.setSmallName(rs.getString("smallName"));
				   ca.setSmallNote(rs.getString("smallNote"));
			   }
			   this.closeConn(conn);
			   
		   }
		   catch(Exception ex){
			   ex.printStackTrace();
		   }
		   return ca;
	   }
	public Collection getAllCats(){
		   String sql="select * from smallcategory";
		
		   return this.getCats(sql);
	   }
	public Collection getSmallCategoryBycatId(int id){
		   String sql="select * from smallcategory where catId="+id;
		
		   return this.getCats(sql);
	   }
	public Smallcategory getCategorys(int id){
		   String sql="select * from smallcategory where smallid="+id;
		   return this.getCategory(sql);
	   }
	
	 public int deleteCatById(int id){
		   String sql="delete from smallcategory where smallid="+id;
		   return this.delete(sql);
	   }
	 
	
	 public Smallcategory getSmallcategorys(String sql){
			Smallcategory sc=new Smallcategory();
			try{
				Connection conn=this.getConn();
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
			
		  if(rs.next()){
					sc.setSmallId(rs.getInt("smallId"));
					sc.setSmallName(rs.getString("smallName"));
					sc.setSmallNote(rs.getString("smallNote"));
					sc.setCatId(rs.getInt("catId"));
					
					
				}
				this.closeConn(conn);
			}catch(Exception ex){
				ex.printStackTrace();
				}
			return sc;
		}

	 
	 public Smallcategory getSmallcategorysById(int id){
			String sql="select * from smallcategory where catId="+id;
			return this.getSmallcategorys(sql);
			}
	 
	 public Collection  getSmallcategory(String sql){
			Collection c=new ArrayList();
			try{
				Connection conn=this.getConn();
				Statement stmt=conn.createStatement();
				ResultSet rs=stmt.executeQuery(sql);
				while(rs.next()){
					Smallcategory sc=new Smallcategory();
					sc.setSmallId(rs.getInt("smallId"));
					sc.setSmallName(rs.getString("smallName"));
				    sc.setSmallNote(rs.getString("smallNote"));
					sc.setCatId(rs.getInt("catId"));
					c.add(sc);
				}
				this.closeConn(conn);			
			}catch(Exception ex){
				ex.printStackTrace();
			}
			return c;
		}

	 
	 public Collection getSmallcategoryById(int catId){
			String sql="select * from smallcategory";
			if(catId!=0){
				sql+="  where catId="+catId;
			}
			//String sql="select * from news where cid="+id;
			return this.getSmallcategory(sql);
		}

}
