package pojo;
// Generated 14 Oct, 2019 12:44:52 AM by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * ReservedProductsId generated by hbm2java
 */
public class ReservedProductsId implements java.io.Serializable {

	private int productId;
	private Date reservedFromDate;
	private Date reservedToDate;
	private int customerId;

	public ReservedProductsId() {
	}

	public ReservedProductsId(int productId, Date reservedFromDate, Date reservedToDate, int customerId) {
		this.productId = productId;
		this.reservedFromDate = reservedFromDate;
		this.reservedToDate = reservedToDate;
		this.customerId = customerId;
	}

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public Date getReservedFromDate() {
		return this.reservedFromDate;
	}

	public void setReservedFromDate(Date reservedFromDate) {
		this.reservedFromDate = reservedFromDate;
	}

	public Date getReservedToDate() {
		return this.reservedToDate;
	}

	public void setReservedToDate(Date reservedToDate) {
		this.reservedToDate = reservedToDate;
	}

	public int getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ReservedProductsId))
			return false;
		ReservedProductsId castOther = (ReservedProductsId) other;

		return (this.getProductId() == castOther.getProductId())
				&& ((this.getReservedFromDate() == castOther.getReservedFromDate())
						|| (this.getReservedFromDate() != null && castOther.getReservedFromDate() != null
								&& this.getReservedFromDate().equals(castOther.getReservedFromDate())))
				&& ((this.getReservedToDate() == castOther.getReservedToDate())
						|| (this.getReservedToDate() != null && castOther.getReservedToDate() != null
								&& this.getReservedToDate().equals(castOther.getReservedToDate())))
				&& (this.getCustomerId() == castOther.getCustomerId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getProductId();
		result = 37 * result + (getReservedFromDate() == null ? 0 : this.getReservedFromDate().hashCode());
		result = 37 * result + (getReservedToDate() == null ? 0 : this.getReservedToDate().hashCode());
		result = 37 * result + this.getCustomerId();
		return result;
	}

}
