package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.Connector;
import vo.CalcHis;

public class CalcService {
	public List<CalcHis> getCalcList() throws SQLException{
		Connection conn = Connector.getConnection();
		String sql = "select * from calc_his";
		PreparedStatement ps = conn.prepareStatement(sql); 
		ResultSet rs = ps.executeQuery();
		List<CalcHis> chList = new ArrayList<>();
		while(rs.next()) {
			CalcHis ch= new CalcHis();
			ch.setNum(rs.getInt("num"));
			ch.setOps(rs.getString("ops"));
			ch.setResult(rs.getDouble("result"));
			chList.add(ch);			
		}return chList;
		
	}
	public static void main(String[] args) throws SQLException {
		
	}
}
