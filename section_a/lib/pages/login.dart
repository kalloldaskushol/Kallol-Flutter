import 'package:flutter/material.dart';
import 'package:section_a/auth/auth_services.dart';
import 'package:section_a/pages/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signIn() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try{
      await AuthServices().signInWithEmailPassword(email, password);
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Login successful!"))
        );
      }
    } catch (e){
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("e $e"))
        );
      }
    }

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: 400,
          // width: 300,
          color: Colors.yellowAccent,
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Here", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.orange),),
              SizedBox(height: 20,),
              Text("Welcome back, you've been missed!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
              SizedBox(height: 20,),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              SizedBox(height: 20,),
              Row(children: [
                SizedBox(width: 350), 
                Text("forgot password?", style: TextStyle(color: Colors.black),),
              ],),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: (){signIn();}, child: Text("Login", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Register()));
                } ,child: Text("Create New Account", style: TextStyle(color: Colors.black),),)

            ],
            
          ),
        ),
      ),
    );
  }
}