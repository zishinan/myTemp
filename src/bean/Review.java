package bean;

public class Review {
	private int reviewId;
	private int taskId;
	private int userId;
	private String reviewTitle;
	private String reviewContent;
	private String reviewTime;
	private String reviewName;
	private boolean isAnnoymous;
	private boolean isAudit;
	
	public String getReviewTitle() {
		return reviewTitle;
	}
	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}
	public int getReviewId() {
		return reviewId;
	}
	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public String getReviewTime() {
		return reviewTime;
	}
	public void setReviewTime(String reviewTime) {
		this.reviewTime = reviewTime;
	}
	public String getReviewName() {
		return reviewName;
	}
	public void setReviewName(String reviewName) {
		this.reviewName = reviewName;
	}
	public boolean isAnnoymous() {
		return isAnnoymous;
	}
	public void setAnnoymous(boolean isAnnoymous) {
		this.isAnnoymous = isAnnoymous;
	}
	public boolean isAudit() {
		return isAudit;
	}
	public void setAudit(boolean isAudit) {
		this.isAudit = isAudit;
	}
	

}
