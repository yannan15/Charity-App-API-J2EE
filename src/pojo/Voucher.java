package pojo;

/**
 * Voucher entity. @author MyEclipse Persistence Tools
 */

public class Voucher implements java.io.Serializable {

	// Fields

	private Integer id;
	private String voucherUrl;

	// Constructors

	/** default constructor */
	public Voucher() {
	}

	/** full constructor */
	public Voucher(String voucherUrl) {
		this.voucherUrl = voucherUrl;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getVoucherUrl() {
		return this.voucherUrl;
	}

	public void setVoucherUrl(String voucherUrl) {
		this.voucherUrl = voucherUrl;
	}

}