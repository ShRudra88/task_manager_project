import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> WriteUserData(UserData)async
{
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('token', UserData['token']);
  await prefs.setString('email', UserData['token']['email']);
  await prefs.setString('firstName', UserData['token']['firstName']);
  await prefs.setString('lastName', UserData['token']['lastName']);
  await prefs.setString('mobile', UserData['token']['mobile']);
  await prefs.setString('photo', UserData['token']['photo']);
}

Future<String?> WriteEmailVerification(Email)async
{
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('EmailVerification', Email);
}

Future<String?> WriteOTPVerification(OTP)async
{
  final prefs = await SharedPreferences.getInstance();

  await prefs.setString('OTPVerification', OTP);
}

Future<String?> ReadUserData(key)async
{
  final prefs = await SharedPreferences.getInstance();

  String? mydata = await prefs.getString(key);


  return mydata;
}

Future<bool> RemoveToken() async
{
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();

  return true;
}

ShowBase64Image(Base64String)
{
  UriData? data = Uri.parse(Base64String).data;

  UinBlist MyImage = data!.contentAsBytes();
  return MyImage;
}