package my.model;
import java.util.List;

public class PurchaseListView {
	private int purchaseTotalCount;
	private int currentPageNumber;
	private List<Purchase> purchaseList;
	private int pageTotalCount;
	private int purchaseCountPerPage;
	private int firstRow;
	private int endRow;

	public int getPurchaseTotalCount() {
		return purchaseTotalCount;
	}

	public void setPurchaseTotalCount(int purchaseTotalCount) {
		this.purchaseTotalCount = purchaseTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<Purchase> getPurchaseList() {
		return purchaseList;
	}

	public void setPurchaseList(List<Purchase> purchaseList) {
		this.purchaseList = purchaseList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getPurchaseCountPerPage() {
		return purchaseCountPerPage;
	}

	public void setPurchaseCountPerPage(int purchaseCountPerPage) {
		this.purchaseCountPerPage = purchaseCountPerPage;
	}

	public PurchaseListView(List<Purchase> purchaseList, int purchaseTotalCount,
			int currentPageNumber, int purchaseCountPerPage, int startRow,
			int endRow) {
		this.purchaseList = purchaseList;
		this.purchaseTotalCount = purchaseTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.purchaseCountPerPage = purchaseCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (purchaseTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = purchaseTotalCount / purchaseCountPerPage;
			if (purchaseTotalCount % purchaseCountPerPage > 0) {
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
