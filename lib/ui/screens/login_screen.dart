import 'dart:html';

import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/forgot_password_screen.dart';
import 'package:task_manager_project/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_project/ui/screens/sign_up_screen.dart';
import 'package:task_manager_project/ui/widgets/body_background.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text('Get Started With',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      helperText: 'Email',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      helperText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainBottomNavScreen(),),);
                    },
                    child: const Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),);},

                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),),);
                    },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
