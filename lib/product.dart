import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product",style: TextStyle(color: Colors.teal,fontSize: 18),),
        centerTitle: true,
        actions: [
          Icon(Icons.trolley)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.edgesensor_high_outlined),
                title: const Text("Blog"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.card_giftcard_sharp),
                title: const Text("Gift card"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.house),
                title: const Text("Booking form"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text("Contact us"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.login),
                title: const Text("Login"),
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text("There is no products",style: TextStyle(color: Colors.teal,fontSize: 20),)),
    );
  }
}
