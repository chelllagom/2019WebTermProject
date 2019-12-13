package my.model;
import java.util.List;

public class ProductListView {
	private int productTotalCount;
	private int currentPageNumber;
	private List<Product> productList;
	private int pageTotalCount;
	private int productCountPerPage;
	private int firstRow;
	private int endRow;

	public int getProductTotalCount() {
		return productTotalCount;
	}

	public void setProductTotalCount(int productTotalCount) {
		this.productTotalCount = productTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getProductCountPerPage() {
		return productCountPerPage;
	}

	public void setProductCountPerPage(int productCountPerPage) {
		this.productCountPerPage = productCountPerPage;
	}

	public ProductListView(List<Product> productList, int productTotalCount,
			int currentPageNumber, int productCountPerPage, int startRow,
			int endRow) {
		this.productList = productList;
		this.productTotalCount = productTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.productCountPerPage = productCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (productTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = productTotalCount / productCountPerPage;
			if (productTotalCount % productCountPerPage > 0) {
				pageTotalCount++;
			}
		}
	}

	public int getFirstRow() {
		return firstRow;
	}

	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	
}
