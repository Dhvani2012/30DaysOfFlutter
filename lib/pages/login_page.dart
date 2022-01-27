import 'package:flutter/material.dart';
import 'package:flutter_first_app/utills/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              // spacing between 2 widgets
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
