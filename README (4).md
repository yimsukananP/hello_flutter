```dart
class cat{
    String? species;
	String furColor ="hair less";
	int? price;
	bool law = true;
	
	cat(String species,String furColor,int price){
	    this.species = species;
		this.furColor = furColor;
		this.price = price;
	}
	cat.sphinx(int price){
	    this.species = "sphinx";
		this.price = price;
	}
	cat.caracal(int price){
	    this.species = "caracal";
		this.furColor = "orange";
		this.price = price;
		this.law = false;
	}
	void printCat(){
	    print("Species : $species");
	    print("Fur Color : $furColor");
	    print('Price : $price');
	    print("Law : $law\n");
	}
}
void main(){
    cat persian = new cat("persian","white",400000);
    cat sphinx = new cat.sphinx(3000000);
    cat caracal = new cat.caracal(700000);
    
    persian.printCat();
    sphinx.printCat();
    caracal.printCat();
}
```