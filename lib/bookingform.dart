import 'package:flutter/material.dart';

import 'Giftcard.dart';
import 'blog.dart';
import 'contactus.dart';
import 'homepg.dart';
import 'login.dart';

class Bookingform extends StatefulWidget {
  const Bookingform({super.key});

  @override
  State<Bookingform> createState() => _BookingformState();
}

class _BookingformState extends State<Bookingform> {
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
      body: ListView(
        children: [
          Column(
            children: [
              Text("Want to book your pet in for a stay? Fill out the form below "),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Name",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contact",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Contact",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Email",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Datein",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Date in",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Date out",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Date Out",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Breed",style: TextStyle(color: Colors.teal),),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Breed",
                        fillColor: Colors.teal
                    ),

                  ),
                ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("submit"))


            ],
          ),
        ],
      )


    );
  }
}
