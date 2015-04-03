package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Bid;

public class ControlBid extends ControlDB {
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
	public List<Bid> listBidByTaskid(int taskId){
		String sql = "select * from bid where taskId = "+ taskId;
		List<Bid> bids = new ArrayList<Bid>();
		try{
			Connection conn=this.getConn();
			Statement stmt=conn.createStatement();
			ResultSet rs=stmt.executeQuery(sql);
			if(rs.next()){
				Bid b = new Bid();
				b.setBidId(rs.getInt("bidId"));
				b.setChoose(rs.getBoolean("choose"));
				b.setMessage(rs.getString("message"));
				b.setReply(rs.getString("reply"));
				b.setServerName(rs.getString("serverName"));
				b.setTaskId(rs.getInt("taskId"));
				b.setTime(rs.getString("time"));
				b.setUpload(rs.getString("upload"));
				bids.add(b);
			}
			conn.close();
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return bids;
	}
	
	public Bid getBidByBidId(int bidId){
		String sql = "select * from bid where bidid="+bidId;
		return this.getBid(sql);
	}
	public int insertBid(Bid b){
		String sql = "insert into user bid(bidId,message,reply,time,taskId,serverName,upload)values('"+b.getBidId()+"'"+b.getMessage()+"'"+b.getReply()+"'"+b.getTime()+"'"+b.getTaskId()+"'"+b.getServerName()+"'"+b.getUpload()+"')";
		return this.insert(sql);
	}
	public int updateBid(String massage,int bidid){
		String sql = "update bid set massage='"+massage+"' where bidid="+bidid;
		return this.update(sql);
	}
}
