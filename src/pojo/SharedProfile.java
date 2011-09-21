package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * SharedProfile entity. @author MyEclipse Persistence Tools
 */

public class SharedProfile implements java.io.Serializable {

	// Fields

	private Integer id;
	private String nickname;
	private Integer points;
	private Integer lastSeen;
	private Set locations = new HashSet(0);

	// Constructors

	/** default constructor */
	public SharedProfile() {
	}

	/** full constructor */
	public SharedProfile(String nickname, Integer points, Integer lastSeen,
			Set locations) {
		this.nickname = nickname;
		this.points = points;
		this.lastSeen = lastSeen;
		this.locations = locations;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNickname() {
		return this.nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Integer getPoints() {
		return this.points;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	public Integer getLastSeen() {
		return this.lastSeen;
	}

	public void setLastSeen(Integer lastSeen) {
		this.lastSeen = lastSeen;
	}

	public Set getLocations() {
		return this.locations;
	}

	public void setLocations(Set locations) {
		this.locations = locations;
	}

}