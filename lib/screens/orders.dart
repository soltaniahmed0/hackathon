import 'package:flutter/material.dart';

class OrderingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Cart"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to cart screen
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              _buildCartItem("Human", "rights stemp", 13.50, 2),
              _buildCartItem("Flora ", "stemp", 12.00, 1),
              // Add more items here
              SizedBox(height: 16.0),
              Text("Subtotal: \$27.30 USD"),
              Text("Tax and Fees: \$5.00 USD"),
              Text("Delivery: \$1.30 USD"),
              Text("Total (2 items): \$33.60 USD"),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Handle checkout button press
                },
                child: Text("CHECKOUT"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCartItem(String name, String description, double price, int quantity) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/$name.jpg"), // Replace with actual image
        ),
        title: Text(name),
        subtitle: Text(description),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                // Decrease quantity
              },
            ),
            Text(quantity.toString()),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                // Increase quantity
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Remove item from cart
              },
            ),
          ],
        ),
      ),
    );
  }
}
