package com.KBTQ.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;

//class for composite primary key
@Embeddable
public class SupplyId implements Serializable {
	
	private int batchNo;
	private Product product;
	private Distributor distributor;
	
	//constructors
	public SupplyId() {
	}

	public SupplyId(int batchNo, Product product, Distributor distributor) {
		super();
		this.batchNo = batchNo;
		this.product = product;
		this.distributor = distributor;
	}

	//getters and setters
	
	public int getBatchNo() {
		return batchNo;
	}

	public void setBatchNo(int batchNo) {
		this.batchNo = batchNo;
	}

	@ManyToOne(fetch=FetchType.LAZY, cascade={CascadeType.DETACH, CascadeType.MERGE, 
			CascadeType.PERSIST, CascadeType.REFRESH})
	public Distributor getDistributor() {
		return distributor;
	}

	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}
	
	@ManyToOne(fetch=FetchType.LAZY, cascade={CascadeType.DETACH, CascadeType.MERGE, 
			CascadeType.PERSIST, CascadeType.REFRESH})
	public Product getProduct() {
		return product;
	}
	
	
	public void setProduct(Product product) {
		this.product = product;
	}
	
	

}
