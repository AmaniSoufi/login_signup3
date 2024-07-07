import 'package:flutter/material.dart';
import 'package:untitled6/customwidget/custom_button.dart';
import 'package:untitled6/customwidget/custom_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/start');
          },
        ),
      ),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                    child: Image.asset("images/Triangle-removebg-preview.png")),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * 0.07,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextFormField(
                        width: width,
                        height: height,
                        label: "Email",
                        prefix: Icons.email,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomTextFormField(
                        height: height,
                        width: width,
                        label: "Password",
                        prefix: Icons.lock,
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      CustomButton(
                        text: "Login",
                        width: width,
                        height: height,
                        color: Colors.black,
                        txtcolor: Colors.orange,
                        onPressed: () {
                          _globalKey.currentState!.validate();
                        },
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              child: Image.asset(
                                  "images/Google Logo History Png - Free Transparent PNG Logos.jpg"),
                              width: width * 0.06,
                              color: Colors.white,
                              height: height * 0.06,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              child: Image.asset(
                                  "images/The 7 Types of Logos And How to Use Them _ VistaPrint US.jpg"),
                              width: width * 0.06,
                              color: Colors.white,
                              height: height * 0.06,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.02,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              child: Image.asset(
                                  "images/Facebook Icon Social Media PNG & SVG Design For T-Shirts.jpg"),
                              width: width * 0.06,
                              color: Colors.white,
                              height: height * 0.06,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "D'ont have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/signup');
                            },
                            child: Text(
                              "SignUp",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  height: height * 0.6,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.orange,
                          Colors.black,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
