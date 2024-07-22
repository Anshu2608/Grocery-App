import 'package:grocery/models/cart_model.dart';

class ShoppingCart {
  List<CartItem> items = [];

  void addItem(String name, double price) {
    // Check if item already exists in cart
    bool itemFound = false;
    for (var item in items) {
      if (item.name == name) {
        item.incrementQuantity();
        itemFound = true;
        break;
      }
    }
    if (!itemFound) {
      // Add new item to cart
      items.add(CartItem(name, price));
    }
  }

  void removeItem(String name) {
    items.removeWhere((item) => item.name == name);
  }

  double getTotalAmount() {
    double total = 0;
    for (var item in items) {
      total += item.totalPrice;
    }
    return total;
  }
}
