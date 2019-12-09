package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import my.model.Purchase;
import my.util.JdbcUtil;

public class PurchaseDao {
	
	public void insert(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into purchase (productId,price,amount,memberId,pdate)"
					+ " values(?,?,?,?,?)");
			pstmt.setInt(1, purchase.getProductId());
			pstmt.setInt(2, purchase.getPrice());
			pstmt.setInt(3, purchase.getAmount());
			pstmt.setString(4, purchase.getMemberId());
			pstmt.setTimestamp(5, new Timestamp(purchase.getPdate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	/*
	public String myFavMovieType(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		String myMovieType = "";
		try {
			// group byÎ•? ?Ç¨?ö©?ï¥?Ñú movieTypeÎ≥ÑÎ°ú Í∑∏Î£πÏß??ñ¥?Ñú Í∞??†∏?ò¥(Ï§ëÎ≥µ?óÜ?ù¥ Í∞??†∏?ò§Í≤åÎê®)
			// order byÎ•? ?Ç¨?ö©?ï¥?Ñú ?Öå?ù¥Î∏îÏóê ?Çò???Çú ?öü?àòÍ∞? Í∞??û• ÎßéÏ? Í≤ÉÎ??Ñ∞ ?ò§Î¶ÑÏ∞®?àú ?†ï?†¨?ï¥?Ñú Í∞??†∏?ò¥
			pstmt = conn.prepareStatement("select movietype from purchase "
					+ "where memberId = ? group by movietype order by count(*) desc");
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				// Ï≤? Î≤àÏß∏ columnÎ∞∞Ïó¥(movieType)?ùÑ Í∞??†∏?ò¥
				// Í∑? Ï§ëÏùò Ï≤? Î≤àÏß∏ ?öî?ÜåÎß? Í∞??†∏?ôî?ùå
				// ?ã§ Í∞??†∏?ò§Í≥? ?ã∂?úºÎ©? whileÎ¨∏ÏúºÎ°? Í∞??†∏?ò§Î©? ?ê®
				myMovieType = rs.getString(1);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return myMovieType;
	}
	
	public Purchase selectById(Connection conn, int purchaseId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Purchase purchase = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				purchase = new Purchase(); 
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setGuestName(rs.getString(2));
				purchase.setPassword(rs.getString(3));
				purchase.setPurchase(rs.getString(4));
				purchase.setRegisterTime(rs.getTimestamp(5));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return purchase;
	}
	
	public void update(Connection conn, Purchase purchase) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update purchase set guestname=?,password=?,purchase=?, "
					+ "   registertime=? where purchaseId=?");
			pstmt.setString(1, purchase.getGuestName());
			pstmt.setString(2, purchase.getPassword());
			pstmt.setString(3, purchase.getPurchase());
			pstmt.setTimestamp(4, new Timestamp(purchase.getRegisterTime().getTime()));
			pstmt.setInt(5, purchase.getPurchaseId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int purchaseId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from purchase where purchaseId = ?");
			pstmt.setInt(1, purchaseId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from purchase");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	*/
	
	public List<Purchase> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Purchase> purchaseList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from purchase");
			
			rs  = pstmt.executeQuery(); 
			purchaseList = new ArrayList<Purchase>();
			while (rs.next()){
				Purchase purchase = new Purchase();
				purchase.setPurchaseId(rs.getInt(1));
				purchase.setProductId(rs.getInt(2));
				purchase.setPrice(rs.getInt(3));
				purchase.setAmount(rs.getInt(4));
				purchase.setMemberId(rs.getString(5));
				purchase.setPdate(rs.getTimestamp(6));
				purchaseList.add(purchase);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return purchaseList;
	}
}




















