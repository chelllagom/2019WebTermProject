package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import my.model.Qna;
import my.model.QnaListView;
import my.util.JdbcUtil;

public class QnaDao {
	
	public void insert(Connection conn, Qna qna) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into qna (qnaId,memberId,productId,title,contents,progress,wdate)"
					+ " values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, qna.getQnaId());
			pstmt.setString(2, qna.getMemberId());
			pstmt.setInt(3, qna.getProductId());
			pstmt.setString(4, qna.getTitle());
			pstmt.setString(5, qna.getContents());
			pstmt.setString(6, qna.getProgress());
			pstmt.setTimestamp(7, new Timestamp(qna.getWdate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public Qna selectById(Connection conn, int qnaId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Qna qna = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from qna where qnaId = ?");
			pstmt.setInt(1, qnaId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return qna;
	}
/*	
	public Qna selectByEmail(Connection conn, String email) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Qna qna = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from qna where email = ?");
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()){
				qna = new Qna(); 
				qna.setQnaId(rs.getString(1));
				qna.setPassword(rs.getString(2));
				qna.setName(rs.getString(3));
				qna.setEmail(rs.getString(4));
				qna.setTel1(rs.getString(5));
				qna.setTel2(rs.getString(6));
				qna.setTel3(rs.getString(7));
				qna.setAddress1(rs.getString(8));
				qna.setAddress2(rs.getString(9));
				qna.setAddress3(rs.getString(10));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return qna;
	}
	*/
	public List<Qna> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Qna qna = null; 
		List<Qna> qnas = new ArrayList<Qna>();
		try {
			if(target==null) {
				pstmt = conn.prepareStatement
				("select * from qna");
			}
			else {
				pstmt = conn.prepareStatement
				("select * from qna where " +target +" like ?");
				pstmt.setString(1, "%"+keyword+"%");
			}
			rs = pstmt.executeQuery();
			while (rs.next()){
				qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnas.add(qna);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return qnas;
	}
	
	public void update(Connection conn, Qna qna) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update qna set memberId,productId,title,contents,progress,wdate "
					+ "   where qnaId=?");
			pstmt.setString(1, qna.getMemberId());
			pstmt.setInt(2, qna.getProductId());
			pstmt.setString(3, qna.getTitle());
			pstmt.setString(4, qna.getContents());
			pstmt.setString(5, qna.getProgress());
			pstmt.setInt(6, qna.getQnaId());
			pstmt.setTimestamp(7, new Timestamp(qna.getWdate().getTime()));
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void updateProgress(Connection conn, int qnaId, String progress) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update qna set progress=? "
					+ "   where qnaId=?");
			pstmt.setString(1, progress);
			pstmt.setInt(2, qnaId);
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int qnaId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from qna where qnaId = ?");
			pstmt.setInt(1, qnaId);
			pstmt.executeUpdate();			
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null; 
		ResultSet rs = null; 
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from qna");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}

	public List<Qna> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Qna> qnaList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from qna ");			
			rs  = pstmt.executeQuery(); 
			qnaList = new ArrayList<Qna>();
			while (rs.next()){
				Qna qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnaList.add(qna);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return qnaList;
	}
	
	public List<Qna> selectListByProductId(Connection conn, int productId) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Qna> qnaList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from qna where productId = ?");	
			pstmt.setInt(1, productId);
			rs  = pstmt.executeQuery(); 
			qnaList = new ArrayList<Qna>();
			while (rs.next()){
				Qna qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnaList.add(qna);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return qnaList;
	}
	
	public List<Qna> selectListByMemberId(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Qna> qnaList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from qna where memberId = ?");	
			pstmt.setString(1, memberId);
			rs  = pstmt.executeQuery(); 
			qnaList = new ArrayList<Qna>();
			while (rs.next()){
				Qna qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnaList.add(qna);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return qnaList;
	}
	
	public List<Qna> selectListByProgress(Connection conn, String progress) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Qna> qnaList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from qna where progress = ?");	
			pstmt.setString(1, progress);
			rs  = pstmt.executeQuery(); 
			qnaList = new ArrayList<Qna>();
			while (rs.next()){
				Qna qna = new Qna(); 
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnaList.add(qna);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return qnaList;
	}
	// final은 수정이 안된다는 키워드
		// 페이지 당 5개
		private static final int MOVIE_COUNT_PER_PAGE = 7;

		public QnaListView getQnaList(Connection conn, int pageNumber)
				throws SQLException {
			int currentPageNumber = pageNumber;
			int qnaTotalCount = selectCount(conn);
			List<Qna> qnaList = null;
			int firstRow = 0;
			int endRow = 0;
			try {
				if (qnaTotalCount > 0) {
					firstRow = (pageNumber - 1) * MOVIE_COUNT_PER_PAGE + 1;
					endRow = firstRow + MOVIE_COUNT_PER_PAGE - 1;
					qnaList = selectListLimit(conn, firstRow, endRow);
				} else {
					currentPageNumber = 0;
					qnaList = Collections.emptyList();
				}
				
			} catch (SQLException e) {} 
			finally {
				JdbcUtil.close(conn);
			}
			return new QnaListView(qnaList,
					qnaTotalCount, currentPageNumber,
					MOVIE_COUNT_PER_PAGE, firstRow, endRow);
		}

	public List<Qna> selectListLimit(Connection conn, int firstRow, int endRow) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Qna> qnaList = null;
		try {
			pstmt = conn.prepareStatement("select * from qna limit ?,?");
			pstmt.setInt(1, firstRow-1);
			pstmt.setInt(2, endRow);
			rs  = pstmt.executeQuery(); 
			qnaList = new ArrayList<Qna>();
			while (rs.next()){
				Qna qna = new Qna();
				qna.setQnaId(rs.getInt(1));
				qna.setMemberId(rs.getString(2));
				qna.setProductId(rs.getInt(3));
				qna.setTitle(rs.getString(4));
				qna.setContents(rs.getString(5));
				qna.setProgress(rs.getString(6));
				qna.setWdate(rs.getTimestamp(7));
				qnaList.add(qna);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return qnaList;
	}
}




















