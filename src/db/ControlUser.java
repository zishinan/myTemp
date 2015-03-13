package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import bean.User;

public class ControlUser extends ControlDB
{
	public User getUser(String sql){
		User u=new User();
		
		try{
			Connection conn=this.getConn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				u.setUserId(rs.getInt("userId"));
				u.setUserName(rs.getString("userName"));
				u.setUserPwd(rs.getString("userPwd"));
				u.setRealName(rs.getString("realName"));
				u.setPhoneNumber(rs.getString("phoneNumber"));
				u.setCount(rs.getString("count"));
				u.setEmail(rs.getString("email"));
				u.setUserAddress(rs.getString("userAddress"));
				u.setUserState(rs.getInt("userState"));
				u.setServerName(rs.getString("serverName"));
				u.setSex(rs.getInt("sex"));
				u.setServerNote(rs.getString("serverNote"));
				u.setSmallName(rs.getString("smallName"));
				u.setServerState(rs.getInt("serverState"));
				u.setTaskCount(rs.getInt("taskCount"));
				u.setBidCount(rs.getInt("bidCount"));
				u.setResultCount(rs.getInt("resultCount"));
				
			}else{
				u=null;
				}
			conn.close();
		}
			catch(Exception ex){
				ex.printStackTrace();
				}
			
		
		return u;
	}
	

	@SuppressWarnings("unchecked")
	public Collection getUsers(String sql){
		Collection c=new ArrayList();
		
		try{
			Connection conn=this.getConn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				User u=new User();
				u.setUserId(rs.getInt("userid"));
				u.setUserName(rs.getString("userName"));
				u.setUserPwd(rs.getString("userPwd"));
				u.setRealName(rs.getString("realName"));
				u.setPhoneNumber(rs.getString("phoneNumber"));
				u.setCount(rs.getString("count"));
				u.setEmail(rs.getString("email"));
				u.setUserAddress(rs.getString("userAddress"));
				u.setUserState(rs.getInt("userState"));
				u.setServerName(rs.getString("serverName"));
				u.setSex(rs.getInt("sex"));
				u.setServerNote(rs.getString("serverNote"));
			    u.setSmallName(rs.getString("smallName"));
				u.setServerState(rs.getInt("serverState"));
				u.setTaskCount(rs.getInt("taskCount"));
				u.setBidCount(rs.getInt("bidCount"));
				u.setResultCount(rs.getInt("resultCount"));
				c.add(u);
			}
		}
			catch(Exception ex){
				ex.printStackTrace();
				}
			
		
		return c;
	}
	
	
	public Collection getAllUserByUserState(){
		String sql="select * from user where userState='"+1+"'";
		return this.getUsers(sql);
		
	}
	
	public User getUserNameAndGetPwd(String userName,String userPwd){
		String sql="select * from user where userName='"+userName+"' and userPwd='"+userPwd+"'";
		return this.getUser(sql);
	}
	
	public int delecteUserById(int id){
		String sql="delete from news where userid="+id;
		return this.JX(sql);
	 } 
	
	public User getAllUserById(int userid){
		String sql="select * from user where userid="+userid;
		return this.getUser(sql);
	 } 
	


	public int insertUsers(User u){
		String sql="select count(*)from user where userName='"+u.getUserName()+"' ";
			int i=this.count(sql);
		if(i>0){
			return -1;
		}
		else{
		 sql="insert into user(userName,userPwd,realName,phoneNumber,email,userState,taskCount)values('"+u.getUserName()+"','"+u.getUserPwd()+"','"+u.getRealName()+"','"+u.getPhoneNumber()+"','"+u.getEmail()+"',1,0)";
		 System.out.println("sql"+sql);
		 return this.insertAndGetUserId(sql);
		// return this.insert(sql);
		}
	}
	
	public int updateUsers(int userid,String realName,String phoneNumber){
		String sql="update user set realName='"+realName+"', phoneNumber='"+phoneNumber+"' where userid="+userid;
	
		return this.JX(sql);
		
	}

	
	public int updateUsers(int serverState,String userName,int sex,String phoneNumber,String serverName,String serverNote,String userAddress,String email,String realName){
		String sql="update user set serverState='"+serverState+"',sex='"+sex+"', realName='"+realName+"',phoneNumber='"+phoneNumber+"', serverName='"+serverName+"' ,serverNote='"+serverNote+"',userAddress='"+userAddress+"',email='"+email+"' where userName = '"+userName+"' ";	                                  
	System.out.print("´òÓ¡Êı¾İ¿â"+sql);
		return this.JX(sql);
		
	}
	

	public int insertUser(User u){
		String sql="select count(*)from user where userName='"+u.getUserName()+"' ";
			int i=this.count(sql);
		if(i>0){
			return -1;
		}
		else{
		 sql="insert into user(userAddress)values('"+u.getUserAddress()+"')";
		 System.out.println("sql"+sql);
		 return this.insert(sql);
		}
	}
	
	
	
}
