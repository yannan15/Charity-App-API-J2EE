package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Charity entity. @author MyEclipse Persistence Tools
 */

public class Charity implements java.io.Serializable {

	// Fields

	private Integer id;
	private Effect effect;
	private String name;
	private String comment;
	private String extendedUrl;
	private String logo;
	private String logoGrid;
	private Integer priority;
	private Set effects = new HashSet(0);

	// Constructors

	/** default constructor */
	public Charity() {
	}

	/** full constructor */
	public Charity(Effect effect, String name, String comment,
			String extendedUrl, String logo, String logoGrid, Integer priority,
			Set effects) {
		this.effect = effect;
		this.name = name;
		this.comment = comment;
		this.extendedUrl = extendedUrl;
		this.logo = logo;
		this.logoGrid = logoGrid;
		this.priority = priority;
		this.effects = effects;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Effect getEffect() {
		return this.effect;
	}

	public void setEffect(Effect effect) {
		this.effect = effect;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getExtendedUrl() {
		return this.extendedUrl;
	}

	public void setExtendedUrl(String extendedUrl) {
		this.extendedUrl = extendedUrl;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getLogoGrid() {
		return this.logoGrid;
	}

	public void setLogoGrid(String logoGrid) {
		this.logoGrid = logoGrid;
	}

	public Integer getPriority() {
		return this.priority;
	}

	public void setPriority(Integer priority) {
		this.priority = priority;
	}

	public Set getEffects() {
		return this.effects;
	}

	public void setEffects(Set effects) {
		this.effects = effects;
	}

}