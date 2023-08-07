package dto;
import java.util.*;
import java.io.Serializable;

public class Item implements Serializable{
	private static final long serialVersionUID = -711L;

	Calendar c = Calendar.getInstance();
	
	private String itemId;		//아이템ID
	private String iName;		//아이템 명
	private Integer price;		//아이템 가격
	private Integer diaPrice;	//다이아 가격
	private String description;	//아이템 설명
	private String category;	//분류
	private String day;			//판매 기간
	private Integer amount;		//아이템 구매시 갯수
	private String filename;	//이미지 파일명
	
	public Item() {
		super();
	}
	
	public Item(String itemId, String iName, Integer price, Integer diaPrice) {
		this.itemId = itemId;
		this.iName = iName;
		this.price = price;
		this.diaPrice = diaPrice;
	}

	public String getItemId() {
		return itemId;
	}

	public void setItemId(String itemId) {
		this.itemId = itemId;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public Integer getdiaPrice() {
		return diaPrice;
	}

	public void setdiaPrice(Integer diaPrice) {
		this.diaPrice = diaPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
}
