package pojo;

import java.util.Date;

/**
 * Activity entity. @author MyEclipse Persistence Tools
 */

public class Activity implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer type;
	private String caption;
	private String comment;
	private Byte clientCreated;
	private Date timestamp;
	private Integer points;

	// Constructors

	/** default constructor */
	public Activity() {
	}

	/** full constructor */
	public Activity(Integer type, String caption, String comment,
			Byte clientCreated, Date timestamp, Integer points) {
		this.type = type;
		this.caption = caption;
		this.comment = comment;
		this.clientCreated = clientCreated;
		this.timestamp = timestamp;
		this.points = points;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getCaption() {
		return this.caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Byte getClientCreated() {
		return this.clientCreated;
	}

	public void setClientCreated(Byte clientCreated) {
		this.clientCreated = clientCreated;
	}

	public Date getTimestamp() {
		return this.timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public Integer getPoints() {
		return this.points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

}