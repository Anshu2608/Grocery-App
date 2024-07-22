
import 'package:flutter/material.dart';
import 'package:grocery/operations/shopping_cart_operations.dart';
import 'package:grocery/screens/cart_page.dart';

// Sample images for demonstration
Map<String, String> itemImages = {
  'Apple': 'assets/apple.png',
  'Banana': 'assets/banana.png',
  'Orange': 'assets/orange.png',
  'Grapes': 'assets/grapes.png',
  'Mango': 'assets/mango.png',
  'Carrot': 'assets/carrot.png',
  'Broccoli': 'assets/broccoli.png',
  'Spinach': 'assets/spinach.png',
  'Tomato': 'assets/tomato.png',
  'Cabbage': 'assets/cabbage.png',
  'Milk': 'assets/milk.png',
  'Cheese': 'assets/cheese.png',
  'Yogurt': 'assets/yogurt.png',
  'Butter': 'assets/butter.png',
  'Cream': 'assets/cream.png',
  'Lentils': 'assets/lentils.png',
  'Beans': 'assets/beans.png',
  'Chickpeas': 'assets/chickpeas.png',
  'Peas': 'assets/peas.png',
  'Kidney Beans': 'assets/kidney_beans.png',
};

// Initialize the shopping cart
ShoppingCart cart = ShoppingCart();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Fruits'),
                Tab(text: 'Vegetables'),
                Tab(text: 'Dairy Products'),
                Tab(text: 'Pulses'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildCategoryList(fruits, 'Fruits'),
                  _buildCategoryList(vegetables, 'Vegetables'),
                  _buildCategoryList(dairyProducts, 'Dairy Products'),
                  _buildCategoryList(pulses, 'Pulses'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList(List<String> items, String category) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final itemName = items[index];
        final itemPrice = 10.0; // Replace with actual price logic
        final itemImage = itemImages[itemName] ?? 'assets/default_image.png'; // Replace with actual image logic
        return Card(
          elevation: 3,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(itemImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(itemName),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(
                  'Price: \$${itemPrice.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text('Quantity: ${cart.getItemQuantity(itemName)}'),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        cart.addItem(itemName, itemPrice);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('$itemName added to cart'),
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                      child: Text('Add to Cart'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}




/*
import 'package:flutter/material.dart';
import 'package:grocery/operations/shopping_cart_operations.dart';
import 'package:grocery/screens/cart_page.dart';


List<String> fruits = ['Apple', 'Banana', 'Orange', 'Grapes', 'Mango'];
List<String> vegetables = ['Carrot', 'Broccoli', 'Spinach', 'Tomato', 'Cabbage'];
List<String> dairyProducts = ['Milk', 'Cheese', 'Yogurt', 'Butter', 'Cream'];
List<String> pulses = ['Lentils', 'Beans', 'Chickpeas', 'Peas', 'Kidney Beans'];

// Initialize the shopping cart
ShoppingCart cart = ShoppingCart();

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(text: 'Fruits'),
                Tab(text: 'Vegetables'),
                Tab(text: 'Dairy Products'),
                Tab(text: 'Pulses'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildCategoryList(fruits, 'Fruits'),
                  _buildCategoryList(vegetables, 'Vegetables'),
                  _buildCategoryList(dairyProducts, 'Dairy Products'),
                  _buildCategoryList(pulses, 'Pulses'),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList(List<String> items, String category) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final itemName = items[index];
        return ListTile(
          title: Text(itemName),
          leading: Icon(Icons.shopping_cart),
          onTap: () {
            // Simulate adding item to cart
            double price = 10.0; // Replace with actual price logic
            cart.addItem(itemName, price);
            // Show confirmation or navigate to item details
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$itemName added to cart'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        );
      },
    );
  }
}

 */





