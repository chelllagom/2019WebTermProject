package my.service;

import java.sql.Connection;
import java.sql.SQLException;

import my.dao.MessageDao;
import my.model.Message;
import my.util.ConnectionProvider;
import my.util.JdbcUtil;

public class DeleteMessageService {
	public void deleteMessage(int messageId, String password){
		Connection conn = null; 
		try {
			conn = ConnectionProvider.getConnection(); 
			conn.setAutoCommit(false); //tranx ?��?��
			MessageDao dao = new MessageDao();
			Message message = dao.selectById(conn, messageId);
			if (message == null) {
				throw new MessageNotFoundException("메시�? ?��?��");
			}
			if (!password.equals(message.getPassword())){
				throw new BadPasswordException("?��?��?��?�� ?��맞음");
			}
			dao.deleteById(conn, messageId);
			conn.commit(); // trax ?��
		} catch (SQLException e){
			JdbcUtil.rollback(conn);
			throw new ServiceException("?��?�� ?��?��"+e.getMessage(), e);
		} catch (MessageNotFoundException|BadPasswordException ex){
			JdbcUtil.rollback(conn);
			throw ex;
		} finally {
			JdbcUtil.close(conn);
		}
	}

}







