```java
public class cat {
    private String species;
    private String furColor = "hair less";
    private Integer price;
    private boolean law = true;

    public cat(String species, String furColor, int price) {
        this.species = species;
        this.furColor = furColor;
        this.price = price;
    }

    
    public static cat sphinx(int price) {
        cat cat = new cat();
        cat.species = "sphinx";
        cat.price = price;
        return cat;
    }

    public static cat caracal(int price) {
        cat cat = new cat();
        cat.species = "caracal";
        cat.furColor = "orange";
        cat.price = price;
        cat.law = false;
        return cat;
    }

    public void printCat() {
        System.out.println("Species: " + species);
        System.out.println("Fur Color: " + furColor);
        System.out.println("Price: " + price);
        System.out.println("Law: " + law + "\n");
    }

    public static void main(String[] args) {
        cat persian = new cat("persian", "white", 400000);
        cat sphinx = cat.sphinx(3000000);
        cat caracal = cat.caracal(700000);

        persian.printCat();
        sphinx.printCat();
        caracal.printCat();
    }
}

```