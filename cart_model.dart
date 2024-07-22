class CartItem {
  final String name;
  final double price;
  int quantity;

  CartItem(this.name, this.price, {this.quantity = 1});

  double get totalPrice => price * quantity;

  void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }
}




/*
import 'package:flutter/foundation.dart';

// Model for an individual item available for sale
class Item {
  final String name;
  final double price;

  Item({required this.name, required this.price});
}

// Model for items in the cart
class CartItem {
  final Item item;
  int quantity;

  CartItem({required this.item, this.quantity = 1});
}

// Cart model that manages cart items and operations
class CartModel extends ChangeNotifier {
  // List of items available for sale (example data)
  List<Item> availableItems = [
    Item(name: 'Apple', price: 1.99),
    Item(name: 'Banana', price: 0.99),
    Item(name: 'Milk', price: 2.49),
    Item(name: 'Cheese', price: 3.99),
  ];

  // List of items currently in the cart
  List<CartItem> cartItems = [];

  // Method to add an item to the cart
  void addItemToCart(Item item) {
    // Check if the item already exists in the cart
    int index = cartItems.indexWhere((cartItem) => cartItem.item == item);
    if (index != -1) {
      cartItems[index].quantity++;
    } else {
      cartItems.add(CartItem(item: item));
    }
    // Notify listeners to update UI
    notifyListeners();
  }

  // Method to remove an item from the cart
  void removeItemFromCart(Item item) {
    // Find the index of the item in the cart
    int index = cartItems.indexWhere((cartItem) => cartItem.item == item);
    if (index != -1) {
      // Decrease the quantity; remove item if quantity is 0
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      } else {
        cartItems.removeAt(index);
      }
      // Notify listeners to update UI
      notifyListeners();
    }
  }

  // Method to calculate the total price of items in the cart
  double calculateTotal() {
    double total = 0;
    for (var cartItem in cartItems) {
      total += cartItem.item.price * cartItem.quantity;
    }
    return total;
  }
}

 */



