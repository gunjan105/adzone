package pojo;
// Generated 14 Oct, 2019 12:44:52 AM by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * AvailableProductsId generated by hbm2java
 */
public class AvailableProductsId implements java.io.Serializable {

	private int productId;
	private Date availableFromDate;

	public AvailableProductsId() {
	}

	public AvailableProductsId(int productId, Date availableFromDate) {
		this.productId = productId;
		this.availableFromDate = availableFromDate;
	}

	public int getProductId() {
		return this.productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public Date getAvailableFromDate() {
		return this.availableFromDate;
	}

	public void setAvailableFromDate(Date availableFromDate) {
		this.availableFromDate = availableFromDate;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof AvailableProductsId))
			return false;
		AvailableProductsId castOther = (AvailableProductsId) other;

		return (this.getProductId() == castOther.getProductId())
				&& ((this.getAvailableFromDate() == castOther.getAvailableFromDate())
						|| (this.getAvailableFromDate() != null && castOther.getAvailableFromDate() != null
								&& this.getAvailableFromDate().equals(castOther.getAvailableFromDate())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getProductId();
		result = 37 * result + (getAvailableFromDate() == null ? 0 : this.getAvailableFromDate().hashCode());
		return result;
	}

}
