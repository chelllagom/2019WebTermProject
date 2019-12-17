package my.dao;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;

import my.model.Product;
import my.model.ProductListView;
import my.util.JdbcUtil;

public class ProductDao {
	
	public void insert(Connection conn, Product product) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("insert into product (name,maker,price,discount,origin,thumbnailimg,detailimg,fav,category,memo)"
					+ " values(?,?,?,?,?,?,?,?,?,?)");
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getMaker());
			pstmt.setInt(3, product.getPrice());
			pstmt.setInt(4, product.getDiscount());
			pstmt.setString(5, product.getOrigin());
			pstmt.setString(6, product.getThumbnailimg());
			pstmt.setString(7, product.getDetailimg());
			pstmt.setInt(8, product.getFav());
			pstmt.setString(9, product.getCategory());
			pstmt.setString(10, product.getMemo());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	
	public Product selectById(Connection conn, int productId) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Product product = null; 
		try {
			pstmt = conn.prepareStatement
			("select * from product where productId = ?");
			pstmt.setInt(1, productId);
			rs = pstmt.executeQuery();
			if (rs.next()){
				product = new Product(); 
				product.setProductId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setMaker(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setDiscount(rs.getInt(5));
				product.setOrigin(rs.getString(6));
				product.setThumbnailimg(rs.getString(7));
				product.setDetailimg(rs.getString(8));
				product.setFav(rs.getInt(9));
				product.setCategory(rs.getString(10));
				product.setMemo(rs.getString(11));
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return product;
	}
	
	public List<Product> selectLike(Connection conn, String target, String keyword) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		ResultSet rs = null;
		Product product = null; 
		List<Product> products = new ArrayList<Product>();
		try {
			if (target == null) 
				pstmt = conn.prepareStatement
				("select * from product");
			else {
				pstmt = conn.prepareStatement
				("select * from product where " +target +" like ?");
				pstmt.setString(1, "%"+keyword+"%");
			}
			rs = pstmt.executeQuery();
			while (rs.next()){
				product = new Product(); 
				product.setProductId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setMaker(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setDiscount(rs.getInt(5));
				product.setOrigin(rs.getString(6));
				product.setThumbnailimg(rs.getString(7));
				product.setDetailimg(rs.getString(8));
				product.setFav(rs.getInt(9));
				product.setCategory(rs.getString(10));
				product.setMemo(rs.getString(11));
				products.add(product);
			}
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return products;
	}
	
	public void update(Connection conn, Product product) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update product set name=?,maker=?,price=?,discount=?,origin=?,thumbnailimg=?,detailimg=?,fav=?,category=?,memo=? where productId=?");
			pstmt.setString(1, product.getName());
			pstmt.setString(2, product.getMaker());
			pstmt.setInt(3, product.getPrice());
			pstmt.setInt(4, product.getDiscount());
			pstmt.setString(5, product.getOrigin());
			pstmt.setString(6, product.getThumbnailimg());
			pstmt.setString(7, product.getDetailimg());
			pstmt.setInt(8, product.getFav());
			pstmt.setString(9, product.getCategory());
			pstmt.setString(10, product.getMemo());
			pstmt.setInt(11, product.getProductId());
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void updateFav(Connection conn, int productId, int inc) 
			throws SQLException {
		PreparedStatement pstmt=null; 
		try {
			pstmt = conn.prepareStatement
			("update product set fav = fav + "+inc+" where productId=?");
			pstmt.setInt(1, productId);
			pstmt.executeUpdate(); 
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(pstmt);
		}
	}
	
	public void deleteById(Connection conn, int productId) 
			throws SQLException {
		PreparedStatement pstmt=null; 		
		try {
			pstmt = conn.prepareStatement
			("delete from product where productId = ?");
			pstmt.setInt(1, productId);
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
			rs = stmt.executeQuery("select count(*) from product");
			rs.next();
			return rs.getInt(1);
		} finally {
			//JdbcUtil.close(conn);
			JdbcUtil.close(rs);
		}
	}
	
	
	public List<Product> selectList(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from product ");			
			rs  = pstmt.executeQuery(); 
			productList = new ArrayList<Product>();
			while (rs.next()){
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setMaker(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setDiscount(rs.getInt(5));
				product.setOrigin(rs.getString(6));
				product.setThumbnailimg(rs.getString(7));
				product.setDetailimg(rs.getString(8));
				product.setFav(rs.getInt(9));
				product.setCategory(rs.getString(10));
				product.setMemo(rs.getString(11));
				productList.add(product);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return productList;
	}
	
	public List<Product> selectListByProductType(Connection conn, String productType) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from product where category = ?");
			pstmt.setString(1, productType);
			rs  = pstmt.executeQuery(); 
			productList = new ArrayList<Product>();
			while (rs.next()){
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setMaker(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setDiscount(rs.getInt(5));
				product.setOrigin(rs.getString(6));
				product.setThumbnailimg(rs.getString(7));
				product.setDetailimg(rs.getString(8));
				product.setFav(rs.getInt(9));
				product.setCategory(rs.getString(10));
				product.setMemo(rs.getString(11));
				productList.add(product);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return productList;
	}
	
	
	public List<Product> selectListByProductName(Connection conn, String keyWord) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
		try {
			pstmt = conn.prepareStatement
					("select * from product where name like '%"+keyWord.trim()+"%'");
			rs  = pstmt.executeQuery(); 
			productList = new ArrayList<Product>();
			while (rs.next()){
				Product product = new Product();
				product.setProductId(rs.getInt(1));
				product.setName(rs.getString(2));
				product.setMaker(rs.getString(3));
				product.setPrice(rs.getInt(4));
				product.setDiscount(rs.getInt(5));
				product.setOrigin(rs.getString(6));
				product.setThumbnailimg(rs.getString(7));
				product.setDetailimg(rs.getString(8));
				product.setFav(rs.getInt(9));
				product.setCategory(rs.getString(10));
				product.setMemo(rs.getString(11));
				productList.add(product);
			}
		} finally {
			JdbcUtil.close(conn);
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
		return productList;
	}
	
	public List<Product> selectListByFavLimit(Connection conn, int limit) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
	try {
		pstmt = conn.prepareStatement
				("select * from product order by fav desc limit 1,?");	
		pstmt.setInt(1, limit);
		rs  = pstmt.executeQuery(); 
		productList = new ArrayList<Product>();
		while (rs.next()){
			Product product = new Product();
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setDiscount(rs.getInt(5));
			product.setOrigin(rs.getString(6));
			product.setThumbnailimg(rs.getString(7));
			product.setDetailimg(rs.getString(8));
			product.setFav(rs.getInt(9));
			product.setCategory(rs.getString(10));
			product.setMemo(rs.getString(11));
			productList.add(product);
		}
	} finally {
		JdbcUtil.close(conn);
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	return productList;
}
	
	public List<Product> selectListByFav(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
	try {
		pstmt = conn.prepareStatement
				("select * from product order by fav desc");	
		rs  = pstmt.executeQuery(); 
		productList = new ArrayList<Product>();
		while (rs.next()){
			Product product = new Product();
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setDiscount(rs.getInt(5));
			product.setOrigin(rs.getString(6));
			product.setThumbnailimg(rs.getString(7));
			product.setDetailimg(rs.getString(8));
			product.setFav(rs.getInt(9));
			product.setCategory(rs.getString(10));
			product.setMemo(rs.getString(11));
			productList.add(product);
		}
	} finally {
		//JdbcUtil.close(conn);
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	return productList;
}
	
	public List<Product> selectListByNew(Connection conn) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
	try {
		pstmt = conn.prepareStatement
				("select * from product order by productId desc");			
		rs  = pstmt.executeQuery(); 
		productList = new ArrayList<Product>();
		while (rs.next()){
			Product product = new Product();
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setDiscount(rs.getInt(5));
			product.setOrigin(rs.getString(6));
			product.setThumbnailimg(rs.getString(7));
			product.setDetailimg(rs.getString(8));
			product.setFav(rs.getInt(9));
			product.setCategory(rs.getString(10));
			productList.add(product);
		}
	} finally {
		JdbcUtil.close(conn);
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	return productList;
}
	
	public List<Product> selectListByNewLimit(Connection conn, int limit) 
			throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Product> productList = null;
	try {
		pstmt = conn.prepareStatement
				("select * from product order by productId desc limit 1,?");		
		pstmt.setInt(1, limit);
		rs  = pstmt.executeQuery(); 
		productList = new ArrayList<Product>();
		while (rs.next()){
			Product product = new Product();
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setDiscount(rs.getInt(5));
			product.setOrigin(rs.getString(6));
			product.setThumbnailimg(rs.getString(7));
			product.setDetailimg(rs.getString(8));
			product.setFav(rs.getInt(9));
			product.setCategory(rs.getString(10));
			productList.add(product);
		}
	} finally {
		JdbcUtil.close(conn);
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	return productList;
}

	// final은 수정이 안된다는 키워드
	// 페이지 당 5개
	private static final int MOVIE_COUNT_PER_PAGE = 5;

	public ProductListView getProductList(Connection conn, int pageNumber)
			throws SQLException {
		int currentPageNumber = pageNumber;
		int productTotalCount = selectCount(conn);
		List<Product> productList = null;
		int firstRow = 0;
		int endRow = 0;
		try {
			if (productTotalCount > 0) {
				firstRow = (pageNumber - 1) * MOVIE_COUNT_PER_PAGE + 1;
				endRow = firstRow + MOVIE_COUNT_PER_PAGE - 1;
				productList = selectListLimit(conn, firstRow, endRow - (pageNumber-1)*MOVIE_COUNT_PER_PAGE );
			} else {
				currentPageNumber = 0;
				productList = Collections.emptyList();
			}
			
		} catch (SQLException e) {} 
		finally {
			JdbcUtil.close(conn);
		}
		return new ProductListView(productList,
				productTotalCount, currentPageNumber,
				MOVIE_COUNT_PER_PAGE, firstRow, endRow);
	}

public List<Product> selectListLimit(Connection conn, int firstRow, int endRow) 
		throws SQLException {
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<Product> productList = null;
	try {
		pstmt = conn.prepareStatement
				("select * from product limit ?,?");
		pstmt.setInt(1, firstRow-1);
		pstmt.setInt(2, endRow);
		rs  = pstmt.executeQuery(); 
		productList = new ArrayList<Product>();
		while (rs.next()){
			Product product = new Product();
			product.setProductId(rs.getInt(1));
			product.setName(rs.getString(2));
			product.setMaker(rs.getString(3));
			product.setPrice(rs.getInt(4));
			product.setDiscount(rs.getInt(5));
			product.setOrigin(rs.getString(6));
			product.setThumbnailimg(rs.getString(7));
			product.setDetailimg(rs.getString(8));
			product.setFav(rs.getInt(9));
			product.setCategory(rs.getString(10));
			product.setMemo(rs.getString(11));
			productList.add(product);
		}
	} finally {
		JdbcUtil.close(conn);
		JdbcUtil.close(rs);
		JdbcUtil.close(pstmt);
	}
	return productList;
}
}




















