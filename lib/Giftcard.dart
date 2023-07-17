import 'package:flutter/material.dart';
import 'package:onlinepetshop/bookingform.dart';

import 'blog.dart';
import 'contactus.dart';
import 'homepg.dart';
import 'login.dart';

class Giftcard extends StatefulWidget {
  const Giftcard({super.key});

  @override
  State<Giftcard> createState() => _GiftcardState();
}

class _GiftcardState extends State<Giftcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog",style: TextStyle(color: Colors.teal,fontSize: 18),),
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepg()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.edgesensor_high_outlined),
                title: const Text("Blog"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Blog()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.card_giftcard_sharp),
                title: const Text("Gift card"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Giftcard()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.house),
                title: const Text("Booking form"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookingform()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.contacts),
                title: const Text("Contact us"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contactus()));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: const Icon(Icons.login),
                title: const Text("Login"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                },
              ),
            ),
          ],
        ),
      ),
      body: Center(child: Text("oops no! Gift Card right now",style: TextStyle(color: Colors.teal,fontSize: 20),)),
    );
  }
}
