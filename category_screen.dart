
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title:const Text(
      //     'Categories',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      //   backgroundColor: Colors.lightGreen,
      //   centerTitle: true,
      //    automaticallyImplyLeading: false,
      //
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            _buildCategoryCard(
              icon: Icons.local_florist,
              title: 'Fruits',
              onTap: () {
                // Handle tapping on Fruits category
                // Navigate to Fruits category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.local_grocery_store,
              title: 'Vegetables',
              onTap: () {
                // Handle tapping on Vegetables category
                // Navigate to Vegetables category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.local_dining,
              title: 'Dairy Products',
              onTap: () {
                // Handle tapping on Dairy Products category
                // Navigate to Dairy Products category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.grain,
              title: 'Pulses',
              onTap: () {

                // Navigate to Pulses category items screen
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard({required IconData icon, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: Colors.green,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Padding(
        padding:const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            _buildCategoryCard(
              icon: Icons.local_florist,
              title: 'Fruits',
              onTap: () {
                // Handle tapping on Fruits category
                // Navigate to Fruits category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.local_grocery_store,
              title: 'Vegetables',
              onTap: () {
                // Handle tapping on Vegetables category
                // Navigate to Vegetables category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.local_dining,
              title: 'Dairy Products',
              onTap: () {
                // Handle tapping on Dairy Products category
                // Navigate to Dairy Products category items screen
              },
            ),
            _buildCategoryCard(
              icon: Icons.grain,
              title: 'Pulses',
              onTap: () {
                // Handle tapping on Pulses category
                // Navigate to Pulses category items screen
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard({required IconData icon, required String title, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50.0,
              color: Colors.green,
            ),
            SizedBox(height: 10.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
