package my.model;

public class Cart {
	private int productId;
	private int amount;
	
	public Cart() {}

	public Cart(int bookId, int amount) {
		super();
		this.productId = bookId;
		this.amount = amount;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
