package pojo;

import java.util.HashSet;
import java.util.Set;

/**
 * Authority entity. @author MyEclipse Persistence Tools
 */

public class Authority implements java.io.Serializable {

	// Fields

	private Integer id;
	private String authorityDesc;
	private Set roleAuthorities = new HashSet(0);

	// Constructors

	/** default constructor */
	public Authority() {
	}

	/** full constructor */
	public Authority(String authorityDesc, Set roleAuthorities) {
		this.authorityDesc = authorityDesc;
		this.roleAuthorities = roleAuthorities;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAuthorityDesc() {
		return this.authorityDesc;
	}

	public void setAuthorityDesc(String authorityDesc) {
		this.authorityDesc = authorityDesc;
	}

	public Set getRoleAuthorities() {
		return this.roleAuthorities;
	}

	public void setRoleAuthorities(Set roleAuthorities) {
		this.roleAuthorities = roleAuthorities;
	}

}