package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import bean.Category;
import bean.Smallcategory;

public class ControlCategory extends ControlDB {
	public int countCategoryByCname(String catName){
		String sql="select count(*) from Category where catName='"+catName+"'";
		return this.count(sql);
	}
	public int insertCategory(Category cat){
		   int i=0;
		   int j=this.countCategoryByCname(cat.getCatName());
		   if(j>0){
			   i=-1;
		   }
		   else{
			   String sql="insert into category(catName,catNote)values('"+cat.getCatName()+"','"+cat.getCatNote()+"')";
			   i=this.insert(sql);
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
				   Category cat=new Category();
				   cat.setCatName(rs.getString("catName"));
				   cat.setCatId(rs.getInt("catId"));
				   cat.setCatNote(rs.getString("catNote"));
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
	 public Category getCategory(String sql){
		 Category ca=new Category();
		   try{
			   Connection conn=this.getConn();
			   Statement stmt = conn.createStatement();
			   ResultSet rs = stmt.executeQuery(sql);
			   if(rs.next()){
				  
				   ca.setCatName(rs.getString("catName"));
				   ca.setCatId(rs.getInt("catId"));
				   ca.setCatNote(rs.getString("catNote"));
				   
			   }
			   this.closeConn(conn);
			   
		   }
		   catch(Exception ex){
			   ex.printStackTrace();
		   }
		   return ca;
	   }
	 public Collection getAllCats(){
		   String sql="select * from category";
		
		   return this.getCats(sql);
	   }
	 public Collection getACats(int id){
		   String sql="select * from category where catId="+id;
		
		   return this.getCats(sql);
	   }
	 public Category getCategorys(int id){
		   String sql="select * from category where catid="+id;
		   return this.getCategory(sql);
	   }
	 public Category getCategorysbyid(int id){
		   String sql="select * " +
			"from category " +
			"where catId in ( " +
				"select catId " +
				"from smallCategory " +
				"where smallid="+id+
			")";
		   return this.getCategory(sql);
	   }
	 public int deleteCatById(int id){
		   String sql="delete from category where id="+id;
		   return this.delete(sql);
	   }
	 
	
	 
	 public Category getCategory1(int id){
		   String sql="select * from category where catid="+id;
		   return this.getCategory(sql);
	   }
	   
	

}
