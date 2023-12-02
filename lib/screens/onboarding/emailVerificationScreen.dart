import 'package:flutter/material.dart';

import '../../api/apiClient.dart';
import '../../style/style.dart';

class emailVerificationScreen extends StatefulWidget {
  const emailVerificationScreen({super.key});

  @override
  State<emailVerificationScreen> createState() => _emailVerificationScreenState();
}

class _emailVerificationScreenState extends State<emailVerificationScreen> {

  Map<String, String> FormValues = {"email":''};
  bool Loading = false;

  InputOnChange(MapKey, TextValue)
  {
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['email']!.length == 0) {
      ErrorToast('Email required');
    }else {
      setState(() {
        Loading = true;
      });

      bool res = await VarifyEmailRequest(FormValues['email']);

      if (res == true) {
        Navigator.pushNamed(
            context, "/pinVerification");
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
          //ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Your Email Address", style: Head1Text(Colors.indigo[900])),
                SizedBox(height: 1),
                Text("A 6 digit verification pin will send to your email address", style: Head6Text(Colors.indigo[900])),
                SizedBox(height: 20),
                TextFormField(decoration: AppInpurDecoration("Email Address"),),
                SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Next'),
                    onPressed: (){
                      FormOnSubmit();
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
