import 'package:flutter/material.dart';
import 'package:job_search/forgotpassword.dart';
import 'package:job_search/login.dart';


void main() {
  runApp(
    const MaterialApp(home: Signup()), // use MaterialApp
  );
}

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const Image(image: AssetImage('images/signup.png'),height: 200),
              const SizedBox(height: 10),
              const Text("Welcome!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 40)),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the padding as needed
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: 'example@email.com',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the padding as needed
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock_outlined),
                    iconColor: Colors.blue,
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10), // Adjust the padding as needed
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_clock_outlined),
                    iconColor: Colors.blue,
                    border: OutlineInputBorder(),
                    hintText: 'Confirm Password',
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                  child:   Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Login()),
                            );
                          },
                          child: const Text(
                            "go to login?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    TextButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blue),
                        minimumSize: MaterialStatePropertyAll(Size(double.infinity, 50)), // Adjust the height as needed
                      ),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text("Or Connect with media"),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                                ),
                                onPressed: null,
                                child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                        SizedBox(width: 20),
                        Expanded(
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.redAccent),
                                ),
                                onPressed: null, child: Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
