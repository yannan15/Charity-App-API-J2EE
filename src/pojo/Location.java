package pojo;

/**
 * Location entity. @author MyEclipse Persistence Tools
 */

public class Location implements java.io.Serializable {

	// Fields

	private Integer id;
	private SharedProfile sharedProfile;
	private String type;
	private String name;
	private String comment;
	private String address;
	private Float latitude;
	private Float longitude;
	private Integer radius;
	private Integer points;
	private Integer count;
	private String logo;
	private String extendedUrl;

	// Constructors

	/** default constructor */
	public Location() {
	}

	/** full constructor */
	public Location(SharedProfile sharedProfile, String type, String name,
			String comment, String address, Float latitude, Float longitude,
			Integer radius, Integer points, Integer count, String logo,
			String extendedUrl) {
		this.sharedProfile = sharedProfile;
		this.type = type;
		this.name = name;
		this.comment = comment;
		this.address = address;
		this.latitude = latitude;
		this.longitude = longitude;
		this.radius = radius;
		this.points = points;
		this.count = count;
		this.logo = logo;
		this.extendedUrl = extendedUrl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public SharedProfile getSharedProfile() {
		return this.sharedProfile;
	}

	public void setSharedProfile(SharedProfile sharedProfile) {
		this.sharedProfile = sharedProfile;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Float getLatitude() {
		return this.latitude;
	}

	public void setLatitude(Float latitude) {
		this.latitude = latitude;
	}

	public Float getLongitude() {
		return this.longitude;
	}

	public void setLongitude(Float longitude) {
		this.longitude = longitude;
	}

	public Integer getRadius() {
		return this.radius;
	}

	public void setRadius(Integer radius) {
		this.radius = radius;
	}

	public Integer getPoints() {
		return this.points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getExtendedUrl() {
		return this.extendedUrl;
	}

	public void setExtendedUrl(String extendedUrl) {
		this.extendedUrl = extendedUrl;
	}

}