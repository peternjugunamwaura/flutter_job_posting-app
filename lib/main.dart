import 'package:flutter/material.dart';
import 'package:job_search/login.dart';
import 'package:job_search/signup.dart';


void main() {
  runApp(
    const MaterialApp(home: MyApp()), // use MaterialApp
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80),
              Image(image: AssetImage('images/medical.png')),
              SizedBox(height: 60),
              const Center(
                child: Text.rich(
                  TextSpan(
                    text: "Get Job Postings Right on your",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                    children: [
                      TextSpan(
                        text: "\nDevice",
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 50),
              const Center(
                child: Text.rich(TextSpan(
                    text: "Are You Looking for a job ? Regardless ",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
                    children: [
                      TextSpan(text: "\nof the profession browse all jobs")
                    ])),
              ),
              const SizedBox(height: 80),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Login())
                              );
                            },
                            child: const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                    const SizedBox(width: 20),
                    Expanded(
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: ()
                            {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>const Signup()));
                            }
                            , child: const Text("Signup",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
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
