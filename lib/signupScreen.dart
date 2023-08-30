import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
       SignupScreen({super.key});

      @override
      Widget build(BuildContext context) {
            return  Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                        title: const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                    "Signup Page",
                                    style: TextStyle(fontSize: 20),
                              ),
                        ),
                        shape: const RoundedRectangleBorder(
                              side: BorderSide(
                                    color: Colors.black,
                                    width: .5,
                              ),
                              borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25),
                              ),
                        ),
                  ),
            );
      }
}
