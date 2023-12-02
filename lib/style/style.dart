import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

/*const colorRed = Color.fromRGB0(28, 231, 36, 1);
const colorDark = Color.fromRGB0(136, 28, 32, 1);
const colorGreen = Color.fromRGB0(33, 191, 115, 1);
const colorBlue = Color.fromRGB0(52, 152, 219, 1);
const colorOrange = Color.fromRGB0(230, 126, 34, 1);
const colorWhite = Color.fromRGB0(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGB0(44, 62, 80, 1);
const colorLightGray = Color.fromRGB0(135, 142, 150, 1);
const colorLight = Color.fromRGB0(211, 211, 211, 1);
*/

TextStyle Head1Text(textColor)
{
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,
  );
}
TextStyle Head6Text(textColor)
{
  return TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}TextStyle Head7Text(textColor)
{
  return TextStyle(
    color: textColor,
    fontSize: 13,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

TextStyle ButtonTextStyle()
{
  return TextStyle(
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,
  );
}

InputDecoration AppInpurDecoration(label)
{
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.green, width: 1),
    ),
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 0.0),
    ),
    border: OutlineInputBorder(),
    labelText: label
  );
}

Ink SuccessButtonChild(String ButtonText)
{
  return Ink(
    decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(6)),
    child: Container(
      height: 45,
      width: double.infinity,
      alignment: Alignment.center,
       child: Text(ButtonText,style: ButtonTextStyle(),),
    ),
  );
}

void SuccessToast(msg)
{
  Fluttertoast.showToast(msg: msg,
   gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.green,
    textColor: Colors.white,
    fontSize: 16.0

  );
}void ErrorToast(msg)
{
  Fluttertoast.showToast(msg: msg,
   gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: Colors.red,
    textColor: Colors.white,
    fontSize: 16.0
  );
}

SvgPicture ScreenBackground(context)
{
  return SvgPicture.asset(
    'assets\images\background.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}


ButtonStyle AppButtonStyle()
{
  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
  );
}

PinTheme AppOTPStyle()
{
  return PinTheme(
    inactiveColor: Colors.lightGreen[50],
    inactiveFillColor: Colors.white,
    selectedColor: Colors.green,
    activeColor:  Colors.white,
    
    selectedFillColor: Colors.green,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 50,
    borderWidth: 0.5,
    fieldWidth: 45,
    activeFillColor: Colors.white,
  );
}