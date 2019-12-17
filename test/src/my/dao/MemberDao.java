package my.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import my.model.Member;
import my.model.MemberListView;
import my.util.JdbcUtil;

public class MemberDao {
	
	public void insert(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into member (memberId,password,name,email,tel1,tel2,tel3,address1,address2,address3)"
					+ " values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, member.getMemberId());
			pstmt.setString(2, member.getPassword());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getEmail());
			pstmt.setString(5, member.getTel1());
			pstmt.setString(6, member.getTel2());
			pstmt.setString(7, member.getTel3());
			pstmt.setString(8, member.getAddress1());
			pstmt.setString(9, member.getAddress2());
			pstmt.setString(10, member.getAddress3());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public boolean checkPassword(Connection conn, String memberId, String password) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		String dbPassword = "";
		try {
			pstmt = conn.prepareStatement
			("select * from member where memberId = ?");
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				dbPassword = rs.getString(2);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		if(password.equals(dbPassword))
			return true;
		else
			return false;
	}

	public Member selectById(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from member where memberId = ?");
			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setTel1(rs.getString(5));
				member.setTel2(rs.getString(6));
				member.setTel3(rs.getString(7));
				member.setAddress1(rs.getString(8));
				member.setAddress2(rs.getString(9));
				member.setAddress3(rs.getString(10));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return member;
	}
	
	public Member selectByEmail(Connection conn, String email) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from member where email = ?");
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setTel1(rs.getString(5));
				member.setTel2(rs.getString(6));
				member.setTel3(rs.getString(7));
				member.setAddress1(rs.getString(8));
				member.setAddress2(rs.getString(9));
				member.setAddress3(rs.getString(10));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return member;
	}
	
	public List<Member> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Member member = null; 
		List<Member> members = new ArrayList<Member>();
		try {
			if(target==null) {
				pstmt = conn.prepareStatement
				("select * from member");
			}
			else {
				pstmt = conn.prepareStatement
				("select * from member where " +target +" like ?");
				pstmt.setString(1, "%"+keyword+"%");
			}
			rs = pstmt.executeQuery();
			while (rs.next()){
				member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setTel1(rs.getString(5));
				member.setTel2(rs.getString(6));
				member.setTel3(rs.getString(7));
				member.setAddress1(rs.getString(8));
				member.setAddress2(rs.getString(9));
				member.setAddress3(rs.getString(10));
				members.add(member);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return members;
	}
	
	public void update(Connection conn, Member member) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update member set password=?,name=?,email=?,tel1=?,tel2=?,tel3=?,address1=?,address2=?,address3=? "
					+ "   where memberId=?");
			pstmt.setString(1, member.getPassword());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getEmail());
			pstmt.setString(4, member.getTel1());
			pstmt.setString(5, member.getTel2());
			pstmt.setString(6, member.getTel3());
			pstmt.setString(7, member.getAddress1());
			pstmt.setString(8, member.getAddress2());
			pstmt.setString(9, member.getAddress3());
			pstmt.setString(10, member.getMemberId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void updatePassword(Connection conn, String memberId, String password) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update member set password=? where memberId=?");
			pstmt.setString(1, password);
			pstmt.setString(2, memberId);
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, String memberId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from member where memberId = ?");
			pstmt.setString(1, memberId);
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
			rs = stmt.executeQuery("select count(*) from member");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}

	public List<Member> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> memberList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from member ");			
			rs  = pstmt.executeQuery(); 
			memberList = new ArrayList<Member>();
			while (rs.next()){
				Member member = new Member(); 
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setTel1(rs.getString(5));
				member.setTel2(rs.getString(6));
				member.setTel3(rs.getString(7));
				member.setAddress1(rs.getString(8));
				member.setAddress2(rs.getString(9));
				member.setAddress3(rs.getString(10));
				memberList.add(member);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return memberList;
	}
	
	// final은 수정이 안된다는 키워드
		// 페이지 당 5개
		private static final int MOVIE_COUNT_PER_PAGE = 7;

		public MemberListView getMemberList(Connection conn, int pageNumber)
				throws SQLException {
			int currentPageNumber = pageNumber;
			int memberTotalCount = selectCount(conn);
			List<Member> memberList = null;
			int firstRow = 0;
			int endRow = 0;
			try {
				if (memberTotalCount > 0) {
					firstRow = (pageNumber - 1) * MOVIE_COUNT_PER_PAGE + 1;
					endRow = firstRow + MOVIE_COUNT_PER_PAGE - 1;
					memberList = selectListLimit(conn, firstRow, endRow);
				} else {
					currentPageNumber = 0;
					memberList = Collections.emptyList();
				}
				
			} catch (SQLException e) {} 
			finally {
				JdbcUtil.close(conn);
			}
			return new MemberListView(memberList,
					memberTotalCount, currentPageNumber,
					MOVIE_COUNT_PER_PAGE, firstRow, endRow);
		}

	public List<Member> selectListLimit(Connection conn, int firstRow, int endRow) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Member> memberList = null;
		try {
			pstmt = conn.prepareStatement("select * from member limit ?,?");
			pstmt.setInt(1, firstRow-1);
			pstmt.setInt(2, endRow);
			rs  = pstmt.executeQuery(); 
			memberList = new ArrayList<Member>();
			while (rs.next()){
				Member member = new Member();
				member.setMemberId(rs.getString(1));
				member.setPassword(rs.getString(2));
				member.setName(rs.getString(3));
				member.setEmail(rs.getString(4));
				member.setTel1(rs.getString(5));
				member.setTel2(rs.getString(6));
				member.setTel3(rs.getString(7));
				member.setAddress1(rs.getString(8));
				member.setAddress2(rs.getString(9));
				member.setAddress3(rs.getString(10));
				memberList.add(member);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return memberList;
	}
}




















