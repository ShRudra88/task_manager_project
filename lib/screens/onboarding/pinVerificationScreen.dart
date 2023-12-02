import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_project/api/apiClient.dart';
import 'package:task_manager_project/utility/utility.dart';

import '../../style/style.dart';

class pinVerificationScreen extends StatefulWidget {
  const pinVerificationScreen({super.key});

  @override
  State<pinVerificationScreen> createState() => _pinVerificationScreenState();
}

class _pinVerificationScreenState extends State<pinVerificationScreen> {

  Map<String,String> FormValues={"OTP":""};

  bool Loading = false;

  InputOnChange(MapKey, TextValue) {
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['otp']!.length == 0) {
      ErrorToast('PIN required');
    }  else {
      setState(() {
        Loading = true;
      });
      String? emailAdress = await ReadUserData('EmailVerification');

      bool res = await VerifiOTPReques(emailAdress,FormValues['otp']);

      if (res == true) {
        Navigator.pushNamed(
            context, '/setPassword');
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
                Text("PIN Verification", style: Head1Text(Colors.indigo[900])),
                SizedBox(height: 1),
                Text("A 6 digit pin has been send to your mobile number", style: Head6Text(Colors.indigo[900])),
                SizedBox(height: 20),
                PinCodeTextField(appContext: context,
                  length: 6,
                  pinTheme: AppOTPStyle(),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v){

                  },
                  onChanged: (value){

                  },
                ),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild('Login'),
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
