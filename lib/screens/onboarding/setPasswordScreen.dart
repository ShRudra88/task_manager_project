import 'package:flutter/material.dart';
import 'package:task_manager_project/utility/utility.dart';

import '../../api/apiClient.dart';
import '../../style/style.dart';

class setPasswordScreen extends StatefulWidget {
  const setPasswordScreen({super.key});

  @override
  State<setPasswordScreen> createState() => _setPasswordScreenState();
}

class _setPasswordScreenState extends State<setPasswordScreen> {

  Map<String, String> FormValues = {"email":"", "OTP":"","password":"", "cpassword":""};
  bool Loading = false;

  @override
  void initState() {
    callStoreDate();
    super.initState();
  }

  callStoreDate()async{
    String? OTP = await ReadUserData('OTPVerification');
    String? Email = await ReadUserData("EmailVerification");

    InputOnChange("email", Email);
    InputOnChange("OTP", OTP);
  }

  InputOnChange(MapKey, TextValue)
  {
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }

  FormOnSubmit() async {
    if (FormValues['password']!.length == 0) {
      ErrorToast('password required');
    } else if (FormValues['password']!= FormValues['cpassword']) {
      ErrorToast('Confirm password should be same');
    } else {

      setState(() {
        Loading = true;
      });

      bool res = await SetPasswordRequest(FormValues);

      if (res == true) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/login', (route) => false);
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
