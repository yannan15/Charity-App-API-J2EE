package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Role entity. @author MyEclipse Persistence Tools
 */

public class Role implements java.io.Serializable {

	// Fields

	private Integer id;
	private String roleName;
	private String roleDesc;
	private Set roleAuthorities = new HashSet(0);
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Role() {
	}

	/** minimal constructor */
	public Role(String roleName, String roleDesc) {
		this.roleName = roleName;
		this.roleDesc = roleDesc;
	}

	/** full constructor */
	public Role(String roleName, String roleDesc, Set roleAuthorities, Set users) {
		this.roleName = roleName;
		this.roleDesc = roleDesc;
		this.roleAuthorities = roleAuthorities;
		this.users = users;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDesc() {
		return this.roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	public Set getRoleAuthorities() {
		return this.roleAuthorities;
	}

	public void setRoleAuthorities(Set roleAuthorities) {
		this.roleAuthorities = roleAuthorities;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}