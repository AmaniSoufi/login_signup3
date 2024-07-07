import 'package:flutter/material.dart';
import 'package:untitled6/customwidget/custom_button.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                "Let's Get Started!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.orange),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Center(
                  child: Image.asset("images/Triangle-removebg-preview.png")),
              SizedBox(
                height: height * 0.07,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                color: Colors.black,
                txtcolor: Colors.orange,
                width: width,
                height: height,
                text: "SignUp",
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
