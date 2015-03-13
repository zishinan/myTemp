package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;

import bean.*;
import db.*;
import tools.*;

public class ControlBid extends ControlDB {
/*获取BId内容。2012-6-29*/
	public Bid getBid(String sql){
		Bid b = new Bid();
		try{
			Connection conn=this.getConn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				b.setBidId(rs.getInt("bidId"));
				b.setChoose(rs.getBoolean("choose"));
				b.setMessage(rs.getString("message"));
				b.setReply(rs.getString("reply"));
				b.setServerName(rs.getString("serverName"));
				b.setTaskId(rs.getInt("taskId"));
				b.setTime(rs.getString("time"));
				b.setUpload(rs.getString("upload"));
			}else{
				b=null;
			}conn.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return b;
	}
	
	public Bid getBidByBidId(int bidId){
		String sql = "select * from bid where bidid="+bidId;
		return this.getBid(sql);
	}
	/*添加投标 2012-6-29 liu*/
	public int insertBid(Bid b){
		String sql = "insert into user bid(bidId,message,reply,time,taskId,serverName,upload)values('"+b.getBidId()+"'"+b.getMessage()+"'"+b.getReply()+"'"+b.getTime()+"'"+b.getTaskId()+"'"+b.getServerName()+"'"+b.getUpload()+"')";
		return this.insert(sql);
	}
	/*更新Bid 2012-6-30 liu*/
	public int updateBid(String massage,int bidid){
		String sql = "update bid set massage='"+massage+"' where bidid="+bidid;
		return this.update(sql);
	}
}
