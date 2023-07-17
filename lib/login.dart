import 'package:flutter/material.dart';
import 'package:onlinepetshop/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
              Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("User Name",style: TextStyle(color: Colors.teal),),
                  ],
                ),
              ),
              SizedBox(width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Your Username"
                    ),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Your Password",

                ),
                obscureText:true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: Text("Forget Password?")),
              ],
            ),
          ),
          SizedBox(
            width: 350,
              child: ElevatedButton(onPressed: (){}, child: Text("Login"))),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
              }, child: Text("Signup",style: TextStyle(decoration: TextDecoration.underline),)),
            ],
          ),

          TextButton(onPressed: (){}, child: Text("Login as Guest,",style: TextStyle(decoration: TextDecoration.underline),))
        ],
      )

    );
  }
}
