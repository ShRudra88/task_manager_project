import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/api/apiClient.dart';
import 'package:task_manager_project/style/style.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  Map<String, String> FormValues = {"Email": "", "password": ""};
  bool Loading = false;

  InputOnChange(MapKey, TextValue) {
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['email']!.length == 0) {
      ErrorToast('Email required');
    } else if (FormValues['password']!.length == 0) {
      ErrorToast('Password required');
    } else {
      setState(() {
        Loading = true;
      });

      bool res = await LoginRequest(FormValues);

      if (res == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/', (route) => false);
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
                          Text("Get Started With",
                              style: Head1Text(Colors.indigo[900])),
                          SizedBox(height: 1),
                          Text("Learn with rabbile hasan",
                              style: Head6Text(Colors.indigo[900])),
                          SizedBox(height: 20),
                          TextFormField(
                            onChanged: (Textvalue) {
                              InputOnChange("email", Textvalue);
                            },
                            decoration: AppInpurDecoration("Email Address"),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            onChanged: (Textvalue) {
                              InputOnChange("password", Textvalue);
                            },
                            decoration: AppInpurDecoration("Password"),
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
                          SizedBox(height: 20),

                          Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, "/emailVerification");
                                  },
                                  child: Text('Forgot Password?', style: Head7Text(Colors.lightGreen),),
                                ),
                                SizedBox(height: 15),

                                InkWell(
                                  onTap: (){
                                    Navigator.pushNamed(context, '/registration');
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an accout?",style: Head7Text(Colors.blue[900]),),
                                      Text("Sign Up",style: Head7Text(Colors.green),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
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
