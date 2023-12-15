import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager_project/ui/screens/login_screen.dart';
import 'package:task_manager_project/ui/widgets/body_background.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Text('Join With Us',
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
                        helperText: 'First Name',
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
                        helperText: 'Last Name',
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
                        helperText: 'Mobile',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  ),TextFormField(
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
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_circle_right_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Have an account? ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),),);
                      },
                        child: const Text(
                          'Sign in',
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
      ),
    );
  }
}
