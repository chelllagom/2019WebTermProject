package my.model;

public class Product {
	private int productId;
	private String name;
	private String maker;
	private int price;
	private int discount;
	private String origin;
	private String thumbnailimg;
	private String detailimg;
	private int fav;
	private String category;
	private String memo;
	private int amount;
	
	public Product() {}

	public Product(String name, String maker, int price, int discount, String origin,
			String thumbnailimg, String detailimg, int fav, String category, String memo, int amount) {
		super();
		this.name = name;
		this.maker = maker;
		this.price = price;
		this.discount = discount;
		this.origin = origin;
		this.thumbnailimg = thumbnailimg;
		this.detailimg = detailimg;
		this.fav = fav;
		this.category = category;
		this.memo = memo;
		this.amount = amount;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getThumbnailimg() {
		return thumbnailimg;
	}

	public void setThumbnailimg(String thumbnailimg) {
		this.thumbnailimg = thumbnailimg;
	}

	public String getDetailimg() {
		return detailimg;
	}

	public void setDetailimg(String detailimg) {
		this.detailimg = detailimg;
	}

	public int getFav() {
		return fav;
	}

	public void setFav(int fav) {
		this.fav = fav;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	};
	
	
}
