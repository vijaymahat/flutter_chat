import 'package:demo_project/signupScreen.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  Widget buildTopPart(){
    return Column(
      children: [
        const SizedBox(height: 30),
        const Text(
            "Welcome...",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,

            ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Welcome to JBKSS - Your Gateway to Show Unity Together! We're thrilled to have you join us on this journey. Whether you're here to Communicate Each Other!, explore new possibilities, our platform is designed with you in mind. Get ready to experience JBKSS's intuitive interface, powerful features, and a community of like-minded individuals. Let's embark on this adventure together!",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 15),
        Image.asset("Images/Logo.png",
        height: 300,
          width: 250,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
         child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildTopPart(),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 350,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          const SizedBox(height: 20),
                          MaterialButton(
                            minWidth: 350,
                            height: 60,
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                            },
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                    ],
                  ),
                ],
              ),
            ],
          ),
           ],
        ),
      ),
      )
    );
  }
}
