package my.model;

import java.util.Date;

public class Qna {
	private int qnaId;
	private String memberId;
	private int productId;
	private String title;
	private String contents;
	private String progress;
	private Date wdate;
	
	public Qna() {}

	public Qna(String memberId, int productId, String title, String contents, String progress, Date wdate) {
		super();
		this.memberId = memberId;
		this.productId = productId;
		this.title = title;
		this.contents = contents;
		this.progress = progress;
		this.wdate = wdate;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public int getQnaId() {
		return qnaId;
	}

	public void setQnaId(int qnaId) {
		this.qnaId = qnaId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	};
	
	
}
