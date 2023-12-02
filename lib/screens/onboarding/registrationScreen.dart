import 'package:flutter/material.dart';

import '../../api/apiClient.dart';
import '../../style/style.dart';

class registrationScreen extends StatefulWidget {
  const registrationScreen({super.key});

  @override
  State<registrationScreen> createState() => _registrationScreenState();
}

class _registrationScreenState extends State<registrationScreen> {
  Map<String, String> FormValues = {
    "email": "",
    "firstName": "",
    "lastName": "",
    "mobile": "",
    "password": "",
    "photo": "",
    "cpassword": ""
  };
  bool Loading = false;

  InputOnChange(MapKey, Textvalue) {
    setState(() {
      FormValues.update(MapKey, (value) => Textvalue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['email']!.length == 0) {
      ErrorToast('Email required');
    } else if (FormValues['firstName']!.length == 0) {
      ErrorToast('First Name required');
    } else if (FormValues['lastName']!.length == 0) {
      ErrorToast('Last Name required');
    } else if (FormValues['mobile']!.length == 0) {
      ErrorToast('Mobile Number required');
    } else if (FormValues['password'] != FormValues['cpassword']) {
      ErrorToast('Conform password should be same');
    } else {
      //ErrorToast('Rudra is great');

      setState(() {
        Loading = true;
      });

      bool res = await LoginRequest(FormValues);

      if (res == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/newTaskList', (route) => false);
      } else {
        setState(() {
          Loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            child: Loading
                ? (Center(
                    child: CircularProgressIndicator(),
                  ))
                : (SingleChildScrollView(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Join With Us",
                              style: Head1Text(Colors.indigo[900])),
                          SizedBox(height: 1),
                          Text("Learn with rabbil hasan",
                              style: Head1Text(Colors.indigo[900])),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("Email Address"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("First Name"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("Last Name"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("Mobile"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("Password"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: AppInpurDecoration("Confirm Password"),
                          ),
                          SizedBox(height: 20),
                          Container(
                            child: ElevatedButton(
                              style: AppButtonStyle(),
                              child: SuccessButtonChild('Login'),
                              onPressed: () {
                                FormOnSubmit();
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
          )
        ],
      ),
    );
  }
}
