package pojo;

/**
 * RoleAuthority entity. @author MyEclipse Persistence Tools
 */

public class RoleAuthority implements java.io.Serializable {

	// Fields

	private Integer id;
	private Authority authority;
	private Role role;

	// Constructors

	/** default constructor */
	public RoleAuthority() {
	}

	/** minimal constructor */
	public RoleAuthority(Role role) {
		this.role = role;
	}

	/** full constructor */
	public RoleAuthority(Authority authority, Role role) {
		this.authority = authority;
		this.role = role;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Authority getAuthority() {
		return this.authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}