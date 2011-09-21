package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Effect entity. @author MyEclipse Persistence Tools
 */

public class Effect implements java.io.Serializable {

	// Fields

	private Integer id;
	private Charity charity;
	private Integer points;
	private String icon;
	private String title;
	private String message;
	private Set charities = new HashSet(0);

	// Constructors

	/** default constructor */
	public Effect() {
	}

	/** minimal constructor */
	public Effect(Integer points) {
		this.points = points;
	}

	/** full constructor */
	public Effect(Charity charity, Integer points, String icon, String title,
			String message, Set charities) {
		this.charity = charity;
		this.points = points;
		this.icon = icon;
		this.title = title;
		this.message = message;
		this.charities = charities;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Charity getCharity() {
		return this.charity;
	}

	public void setCharity(Charity charity) {
		this.charity = charity;
	}

	public Integer getPoints() {
		return this.points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Set getCharities() {
		return this.charities;
	}

	public void setCharities(Set charities) {
		this.charities = charities;
	}

}