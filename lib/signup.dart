import 'package:flutter/material.dart';
import 'package:onlinepetshop/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("SIGNUP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("First Name",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          SizedBox(width: 350,
            child: TextField(
                decoration: InputDecoration(
                    hintText: "Your First name"
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Last Name",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          SizedBox(width: 350,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Last name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("UserName",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          SizedBox(width: 350,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your Username"
              ),
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
          SizedBox(width: 350,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Password",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),
          SizedBox(width: 350,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password"
              ),
              obscureText: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(width: 350,
                child: ElevatedButton(onPressed: (){}, child:Text("SIGN UP"))),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              }, child: Text("Login"))
            ],
          ),


        ],
      ),
    );
  }
}
