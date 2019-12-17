package my.model;
import java.util.List;

public class QnaListView {
	private int qnaTotalCount;
	private int currentPageNumber;
	private List<Qna> qnaList;
	private int pageTotalCount;
	private int qnaCountPerPage;
	private int firstRow;
	private int endRow;

	public int getQnaTotalCount() {
		return qnaTotalCount;
	}

	public void setQnaTotalCount(int qnaTotalCount) {
		this.qnaTotalCount = qnaTotalCount;
	}

	public int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}

	public List<Qna> getQnaList() {
		return qnaList;
	}

	public void setQnaList(List<Qna> qnaList) {
		this.qnaList = qnaList;
	}

	public int getPageTotalCount() {
		return pageTotalCount;
	}

	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}

	public int getQnaCountPerPage() {
		return qnaCountPerPage;
	}

	public void setQnaCountPerPage(int qnaCountPerPage) {
		this.qnaCountPerPage = qnaCountPerPage;
	}

	public QnaListView(List<Qna> qnaList, int qnaTotalCount,
			int currentPageNumber, int qnaCountPerPage, int startRow,
			int endRow) {
		this.qnaList = qnaList;
		this.qnaTotalCount = qnaTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.qnaCountPerPage = qnaCountPerPage;
		this.firstRow = startRow;
		this.endRow = endRow;

		calculatePageTotalCount();
	}

	private void calculatePageTotalCount() {
		if (qnaTotalCount == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = qnaTotalCount / qnaCountPerPage;
			if (qnaTotalCount % qnaCountPerPage > 0) {
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
