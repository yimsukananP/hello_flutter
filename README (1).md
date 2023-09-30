```dart
class cat{
	String furColor ="hair less";
	int price;
	boolean law = true;
	cat(String furColor,int price){
		this.furColor = furColor;
		this.price = price;
	}
	cat.sphinx(int price){
		this.price = price;
	}
	cat.caracal(int price){
		this.furColor = "orange";
		this.price = price;
		this.law = false;
	}
}
```