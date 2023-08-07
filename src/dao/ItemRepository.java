package dao;

import java.util.ArrayList;

import dto.Item;

public class ItemRepository {
	private ArrayList<Item> listOfItems = new ArrayList<Item>();
	private static ItemRepository instance = new ItemRepository();
	
	public ItemRepository() {
		
		Item dia100 = new Item("D01", "���̾� 100��", 9900, 0);
		dia100.setDescription("���� ������ ��� ������ ȭ�� '���̾�'�� 100�� ����ִ� ��Ʈ�Դϴ�.");
		dia100.setCategory("���̾�");
		dia100.setDay("2099/12/31");
		dia100.setAmount(100);
		dia100.setFilename("dia.jpg");
		
		Item dia250 = new Item("D02", "���̾� 250��", 19900, 0);
		dia250.setDescription("���� ������ ��� ������ ȭ�� '���̾�'�� 250�� ����ִ� ��Ʈ�Դϴ�.");
		dia250.setCategory("���̾�");
		dia250.setDay("2099/12/31");
		dia250.setAmount(250);
		dia250.setFilename("dia.jpg");		
		
		Item dia580 = new Item("D03", "���̾� 580��", 39000, 0);
		dia580.setDescription("���� ������ ��� ������ ȭ�� '���̾�'�� 580�� ����ִ� ��Ʈ�Դϴ�.");
		dia580.setCategory("���̾�");
		dia580.setDay("2099/12/31");
		dia580.setAmount(580);
		dia580.setFilename("dia.jpg");
		
		
		Item randomBox = new Item("R01", "�����ڽ�", 0, 50);
		randomBox.setDescription("���� ���� ������ �Ǵ� �������� �������� �����մϴ�.");
		randomBox.setCategory("����");
		randomBox.setDay("2099/12/31");
		randomBox.setAmount(1);
		randomBox.setFilename("box.jpg");
		
		Item randomBox10 = new Item("R02", "�����ڽ� 10��", 0, 450);
		randomBox10.setDescription("���� ���� ������ �Ǵ� �������� �������� �����մϴ�.");
		randomBox10.setCategory("����");
		randomBox10.setDay("2099/12/31");
		randomBox10.setAmount(10);
		randomBox10.setFilename("box.jpg");
		
		Item fixedCharge = new Item("Fix", "30�� ������", 22000, 0);
		fixedCharge.setDescription("30�ϰ� ���̾� 50���� ���� �� �ִ� ��Ʈ�Դϴ�.");
		fixedCharge.setCategory("������");
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
