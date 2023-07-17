import 'package:flutter/material.dart';
import 'package:onlinepetshop/login.dart';

import 'Giftcard.dart';
import 'blog.dart';
import 'bookingform.dart';
import 'homepg.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking form",style: TextStyle(color: Colors.teal,fontSize: 18),),
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
      body: Column(
        children: [
          Container(height: 160,
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset("assets/img_1.png",fit: BoxFit.fill,)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Name",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          SizedBox(width: 350,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(decoration: InputDecoration(
                hintText: "Your Name"
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Email",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 350,
              child: TextFormField(decoration: InputDecoration(
                  hintText: "Your Email"
              ),),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Subject",style: TextStyle(color: Colors.teal),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 350,
              child: TextFormField(decoration: InputDecoration(
                  hintText: "Your Subject"
              ),),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Message",style: TextStyle(color: Colors.teal),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(width: 350,
              child: TextFormField(decoration: InputDecoration(
                  hintText: "Your Message"
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){}, child: Text("submit",)),
          )
        ],
      ),
    );
  }
}
