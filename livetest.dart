void main() {
  // Define a list of fruits represented as maps
  List<Map<String, dynamic>> fruits = [
    {
      "name": "Apple",
      "price": 1.5,
      "quantity": 5,
    },
    {
      "name": "Banana",
      "price": 0.75,
      "quantity": 10,
    },
    {
      "name": "Orange",
      "price": 1.25,
      "quantity": 8,
    },
  ];

// Function to display fruit details
  void displayFruitDetails(List<Map<String, dynamic>> fruits) {
    for (final fruit in fruits) {
      print('==== Fruit details ====');
      print('Name: ${fruit['name']}');
      print('Price: \$${fruit['price']}');
      print('Quantity: ${fruit['quantity']}');
      print('====');
    }
  }

// Function to apply price discount
  void applyPriceDiscount(
      List<Map<String, dynamic>> fruits, double discountPercentage) {
    for (final fruit in fruits) {
      final discountAmount = fruit['price'] * discountPercentage / 100;
      fruit['price'] -= discountAmount;
    }
  }

// Call the function to display fruit details
  displayFruitDetails(fruits);

// Apply a 10% discount
  applyPriceDiscount(fruits, 10);

// Call the function to display fruit details again
  displayFruitDetails(fruits);
}
