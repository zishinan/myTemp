package db;

import java.util.*;
import java.sql.*;

import bean.*;
import db.*;

public class ControlTask extends ControlDB {
	public int insertTasks(Task t) {
		int i = 0;
		try {
			Connection conn = this.getConn();
			String sql = "insert into task"
					+ "(title,taskContent,time,money,smallId,"
					+ "bonusState,way,number,taskState,startTime,userId,upload,uid,catId)"
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, t.getTitle());
			pstmt.setString(2, t.getTaskContent());
			pstmt.setString(3, t.getTime());
			pstmt.setString(4, t.getMoney());
			pstmt.setInt(5, t.getSmallId());
			pstmt.setInt(6, t.getBonusState());
			pstmt.setInt(7, t.getWay());
			pstmt.setInt(8, t.getNumber());
			pstmt.setBoolean(9, t.isTaskState());
			pstmt.setString(10, t.getStartTime());
			pstmt.setInt(11, t.getUserId());
			pstmt.setString(12, t.getUpload());
			pstmt.setInt(13, t.getUId());
			pstmt.setInt(14, t.getCatId());
			i = pstmt.executeUpdate();
			this.closeConn(conn);
		} catch (Exception ex) {
			ex.printStackTrace();
			i = -1;
		}
		return i;
	}

	public List<Task> getNewTasks(){
		List<Task> result = new ArrayList<Task>();
		try {
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			String sql = "select * from task where taskState = 0 order by taskId desc limit 0,5";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Task t = new Task();
				t.setTaskId(rs.getInt("taskId"));
				t.setTitle(rs.getString("title"));
				t.setTaskContent(rs.getString("taskContent"));
				t.setMoney(rs.getString("money"));
				t.setTime(rs.getString("time"));
				t.setBonusState(rs.getInt("bonusState"));
				t.setWay(rs.getInt("way"));
				t.setNumber(rs.getInt("number"));
				t.setTaskState(rs.getBoolean("taskState"));
				t.setStartTime(rs.getString("startTime"));
				t.setUpload(rs.getString("upload"));
				result.add(t);
			}
			this.closeConn(conn);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		for (Task task : result) {
			
		}
		return result;
	}
	
	public List<Task> getNewTasksByCatId(int catId){
		ControlSmallcategory cs = new ControlSmallcategory();
		List<Task> result = new ArrayList<Task>();
		try {
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			String sql = "select * from task where taskState = 0 and catId = "+catId+" order by taskId desc limit 0,5";
					
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Task t = new Task();
				t.setTaskId(rs.getInt("taskId"));
				t.setTitle(rs.getString("title"));
				t.setTaskContent(rs.getString("taskContent"));
				t.setMoney(rs.getString("money"));
				t.setTime(rs.getString("time"));
				t.setBonusState(rs.getInt("bonusState"));
				t.setWay(rs.getInt("way"));
				t.setNumber(rs.getInt("number"));
				t.setTaskState(rs.getBoolean("taskState"));
				t.setStartTime(rs.getString("startTime"));
				t.setUpload(rs.getString("upload"));
				result.add(t);
			}
			this.closeConn(conn);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return result;
	}
	
	public List<Task> getNewTasks10(){
		List<Task> result = new ArrayList<Task>();
		try {
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			String sql = "select * from task where taskState = 0 order by taskId desc limit 0,10";
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Task t = new Task();
				t.setTaskId(rs.getInt("taskId"));
				t.setTitle(rs.getString("title"));
				t.setTaskContent(rs.getString("taskContent"));
				t.setMoney(rs.getString("money"));
				t.setTime(rs.getString("time"));
				t.setBonusState(rs.getInt("bonusState"));
				t.setWay(rs.getInt("way"));
				t.setNumber(rs.getInt("number"));
				t.setTaskState(rs.getBoolean("taskState"));
				t.setStartTime(rs.getString("startTime"));
				t.setUpload(rs.getString("upload"));
				result.add(t);
			}
			this.closeConn(conn);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		for (Task task : result) {
			
		}
		return result;
	}
	
	public Collection getTaskses(String sql) {
		Collection c = new ArrayList();
		try {
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Task t = new Task();
				t.setTaskId(rs.getInt("taskId"));
				t.setTitle(rs.getString("title"));
				t.setTaskContent(rs.getString("taskContent"));
				t.setMoney(rs.getString("money"));
				t.setTime(rs.getString("time"));
				t.setBonusState(rs.getInt("bonusState"));
				t.setWay(rs.getInt("way"));
				t.setNumber(rs.getInt("number"));
				t.setTaskState(rs.getBoolean("istaskState"));
				t.setStartTime(rs.getString("startTime"));
				t.setUpload(rs.getString("upload"));
				c.add(t);
			}
			this.closeConn(conn);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return c;
	}

	public Collection getTaskByName(String smallName) {
		String sql = "select * " + "from task " + "where taskid in( "
				+ "select smallid " + "from smallcateory " + "where smallName="
				+ smallName + ") ";
		return this.getTaskses(sql);

	}

	/* 获取任务内容 2012-6-29 liu */
	public Task getTask(String sql) {
		Task t = new Task();
		try {
			Connection conn = this.getConn();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				t.setBonusState(rs.getInt("bonusState"));
				t.setMoney(rs.getString("money"));
				t.setNumber(rs.getInt("number"));
				t.setSmallId(rs.getInt("smallId"));
				t.setStartTime(rs.getString("startTime"));
				t.setTaskContent(rs.getString("taskContent"));
				t.setTaskId(rs.getInt("taskId"));
				t.setTaskState(rs.getBoolean("taskState"));
				t.setTime(rs.getString("time"));
				t.setTitle(rs.getString("title"));
				t.setUId(rs.getInt("uId"));
				t.setUpload(rs.getString("upload"));
				t.setUserId(rs.getInt("userId"));
				t.setWay(rs.getInt("way"));
			} else {
				t = null;
			}
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return t;
	}

	public Task getTaskByBidId(int bidid) {
		String sql = "select * from task where taskid in (select bidid from bid where bidid='"
				+ bidid + "')";
		return this.getTask(sql);
	}
	public Task getTaskByTaskId(int taskId) {
		String sql = "select * from task where taskid ="+taskId;
		return this.getTask(sql);
	}

}