public class Hungry {

	public static void main(String[] args) {
		String hungry = "Are you hungry?";
		if(hungry.equals("yes"))
		{
			System.out.println("Eat hambuger");
			System.out.println("Eat KFC");
		}
		else {
			String drink = "Are you thirsty?";
			if(drink.equals("yes")) {
				System.out.println("Drink coffee");
			}
			else System.out.println("OK");
		}
	}

}