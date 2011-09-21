package pojo;

/**
 * NewsItem entity. @author MyEclipse Persistence Tools
 */

public class NewsItem implements java.io.Serializable {

	// Fields

	private Integer id;
	private String caption;
	private String extendedUrl;
	private Integer timestamp;

	// Constructors

	/** default constructor */
	public NewsItem() {
	}

	/** full constructor */
	public NewsItem(String caption, String extendedUrl, Integer timestamp) {
		this.caption = caption;
		this.extendedUrl = extendedUrl;
		this.timestamp = timestamp;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCaption() {
		return this.caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String getExtendedUrl() {
		return this.extendedUrl;
	}

	public void setExtendedUrl(String extendedUrl) {
		this.extendedUrl = extendedUrl;
	}

	public Integer getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Integer timestamp) {
		this.timestamp = timestamp;
	}

}