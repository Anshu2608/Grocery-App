//
// import 'package:flutter/material.dart';
// import 'package:grocery/models/cart_model.dart';
//
// class GroceryItemTile extends StatelessWidget {
//   final Item item;
//   final Function() onAddToCart;
//
//   const GroceryItemTile({
//     Key? key,
//     required this.item,
//     required this.onAddToCart,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: ListTile(
//         leading: Icon(Icons.shopping_cart),
//         title: Text(item.name),
//         subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
//         trailing: IconButton(
//           icon: Icon(Icons.add_shopping_cart),
//           onPressed: onAddToCart,
//         ),
//       ),
//     );
//   }
// }



/*
import 'package:flutter/material.dart';
import 'package:grocery/models/cart_model.dart';
import 'package:provider/provider.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final IconData iconData; // Replace with your actual icon or image logic

  const GroceryItemTile({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartModel>(context);

    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(iconData),
        title: Text(itemName),
        subtitle: Text('\$${itemPrice.toStringAsFixed(2)}'),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            CartItem newItem = CartItem(name: itemName, price: itemPrice);
            cart.addItemToCart(newItem);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$itemName added to cart'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}

 */
