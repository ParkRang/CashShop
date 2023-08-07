package dao;

import java.util.ArrayList;

import dto.Item;

public class ItemRepository {
	private ArrayList<Item> listOfItems = new ArrayList<Item>();
	private static ItemRepository instance = new ItemRepository();
	
	public ItemRepository() {
		
		Item dia100 = new Item("D01", "다이아 100개", 9900, 0);
		dia100.setDescription("게임 내에서 사용 가능한 화폐 '다이아'가 100개 들어있는 세트입니다.");
		dia100.setCategory("다이아");
		dia100.setDay("2099/12/31");
		dia100.setAmount(100);
		dia100.setFilename("dia.jpg");
		
		Item dia250 = new Item("D02", "다이아 250개", 19900, 0);
		dia250.setDescription("게임 내에서 사용 가능한 화폐 '다이아'가 250개 들어있는 세트입니다.");
		dia250.setCategory("다이아");
		dia250.setDay("2099/12/31");
		dia250.setAmount(250);
		dia250.setFilename("dia.jpg");		
		
		Item dia580 = new Item("D03", "다이아 580개", 39000, 0);
		dia580.setDescription("게임 내에서 사용 가능한 화폐 '다이아'가 580개 들어있는 세트입니다.");
		dia580.setCategory("다이아");
		dia580.setDay("2099/12/31");
		dia580.setAmount(580);
		dia580.setFilename("dia.jpg");
		
		
		Item randomBox = new Item("R01", "랜덤박스", 0, 50);
		randomBox.setDescription("게임 내에 도움이 되는 아이템이 무작위로 등장합니다.");
		randomBox.setCategory("랜덤");
		randomBox.setDay("2099/12/31");
		randomBox.setAmount(1);
		randomBox.setFilename("box.jpg");
		
		Item randomBox10 = new Item("R02", "랜덤박스 10개", 0, 450);
		randomBox10.setDescription("게임 내에 도움이 되는 아이템이 무작위로 등장합니다.");
		randomBox10.setCategory("랜덤");
		randomBox10.setDay("2099/12/31");
		randomBox10.setAmount(10);
		randomBox10.setFilename("box.jpg");
		
		Item fixedCharge = new Item("Fix", "30일 정액제", 22000, 0);
		fixedCharge.setDescription("30일간 다이아 50개씩 받을 수 있는 세트입니다.");
		fixedCharge.setCategory("정액제");
		fixedCharge.setDay("2020/12/31");
		fixedCharge.setFilename("dia.jpg");
		
		listOfItems.add(dia100);
		listOfItems.add(dia250);
		listOfItems.add(dia580);
		listOfItems.add(randomBox);
		listOfItems.add(randomBox10);
		listOfItems.add(fixedCharge);
	}
	
	public ArrayList<Item> getAllItems(){
		return listOfItems;
	}
	
	public Item getItemById(String itemId) {
		Item itemById = null;
		
		for(int i = 0; i < listOfItems.size(); i++) {
			Item item = listOfItems.get(i);
			if(item!=null && item.getItemId()!=null && item.getItemId().contentEquals(itemId)) {
				itemById = item;
				break;
			}
		}
		return itemById;
	}
	public static ItemRepository getInstance() {
		return instance;
	}
	
	public void addItem(Item item) {
		listOfItems.add(item);
	}
	
}
