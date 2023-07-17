import 'package:flutter/material.dart';
import 'package:onlinepetshop/homepg.dart';
import 'package:onlinepetshop/like.dart';
import 'package:onlinepetshop/product.dart';

import 'info.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int myIndex=0;
  final Pages = [
    Homepg(),
    Info(),
    Product(),
    Likes()

  ];
void onTabTapped(int Index){
  setState(() {
    myIndex=Index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        onTap: onTabTapped, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.tealAccent,),
          label: "Home",backgroundColor: Colors.orangeAccent),
        BottomNavigationBarItem(icon: Icon(Icons.info,color: Colors.tealAccent,),
            label: "Info",backgroundColor: Colors.orangeAccent),
        BottomNavigationBarItem(icon: Icon(Icons.production_quantity_limits,color: Colors.tealAccent,),
            label: "Prod",backgroundColor: Colors.orangeAccent),
        BottomNavigationBarItem(icon: Icon(Icons.heart_broken_rounded,color: Colors.tealAccent,),
            label: "Likes",backgroundColor: Colors.orangeAccent),
      ],
      ),
    );
  }
}
