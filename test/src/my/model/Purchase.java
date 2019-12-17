package my.model;

import java.util.Date;

public class Purchase {
	private int purchaseId;
	private int productId;
	private int price;
	private int amount;
	private String memberId;
	private Date pdate;
	private String name;
	private String progress;
	
	public Purchase() {}

	public Purchase(int productId, int price, int amount, String memberId, Date pdate, String name, String progress) {
		super();
		this.productId = productId;
		this.price = price;
		this.amount = amount;
		this.memberId = memberId;
		this.pdate = pdate;
		this.name = name;
		this.progress = progress;
	}

	public int getPurchaseId() {
		return purchaseId;
	}

	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProgress() {
		return progress;
	}

	public void setProgress(String progress) {
		this.progress = progress;
	}
	
	
}
