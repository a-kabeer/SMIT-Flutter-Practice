void main() {
  //Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock. If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".
  List products = [
    {"name": "Keyboard", "price": 500, "quantity": 5},
    {"name": "Mouse", "price": 600, "quantity": 10},
    {"name": "Handfree", "price": 1500, "quantity": 0},
    {"name": "Earbud", "price": 5500, "quantity": 9},
    {"name": "Power Cable", "price": 200, "quantity": 0},
    {"name": "Charger", "price": 300, "quantity": 1},
    {"name": "Type-c Cable", "price": 250, "quantity": 4},
    {"name": "Power Bank", "price": 3000, "quantity": 6},
    {"name": "Battery", "price": 1800, "quantity": 12},
    {"name": "Headphone", "price": 3500, "quantity": 20}
  ];
  List inStock = [];
  List OutofStock = [];
  for (var i = 0; i < products.length; i++) {
    if (products[i]["quantity"] > 0) {
      inStock.add(products[i]["name"]);
    } else {
      OutofStock.add(products[i]["name"]);
    }
  }
  print("Products in stock are $inStock");
  print("Products out of stock are $OutofStock");
}
