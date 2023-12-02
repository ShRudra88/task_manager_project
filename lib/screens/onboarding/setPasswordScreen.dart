

import 'package:flutter/material.dart';

import '../../style/style.dart';

class setPasswordScreen extends StatefulWidget {
  const setPasswordScreen({super.key});

  @override
  State<setPasswordScreen> createState() => _setPasswordScreenState();
}

class _setPasswordScreenState extends State<setPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Set Password", style: Head1Text(Colors.indigo[900])),
                SizedBox(height: 1),
                Text("Minimum length password 8 character with Letter and Number combination", style: Head6Text(Colors.indigo[900])),
                SizedBox(height: 20),
                TextFormField(decoration: AppInpurDecoration("Password"),),
                SizedBox(height: 20),
                TextFormField(decoration: AppInpurDecoration("Conform Password"),),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Conform'),
                    onPressed: (){

                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
