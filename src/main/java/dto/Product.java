package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = -4274700572038677000L;
	
	
	private String productId;
	private String pname;
	private Integer unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitsInStock;
	private String acTor;
	private String superVisor;
	private String counTry;
	private String raTe;
	private String opEn;
	private String filename;
	
	
	public String getOpEn() {
		return opEn;
	}

	public void setOpEn(String opEn) {
		this.opEn = opEn;
	}

	public String getRaTe() {
		return raTe;
	}

	public void setRaTe(String raTe) {
		this.raTe = raTe;
	}

	public String getCounTry() {
		return counTry;
	}

	public void setCounTry(String counTry) {
		this.counTry = counTry;
	}

	public String getSuperVisor() {
		return superVisor;
	}

	public void setSuperVisor(String superVisor) {
		this.superVisor = superVisor;
	}

	public String getAcTor() {
		return acTor;
	}

	public void setAcTor(String acTor) {
		this.acTor = acTor;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	
	public Product() {
		super();
	}
	
	public Product(String productId, String pname, Integer unitPrice) {
		this.productId=productId;
		this.pname=pname;
		this.unitPrice=unitPrice;
	}
}
