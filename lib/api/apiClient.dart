import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart' as http;
import 'package:task_manager_project/style/style.dart';

import '../utility/utility.dart';

var BaseURL = "https://task.teamrabbil.com/api/v1";
var RequestHeader = {"Content-Type":"application/json"};

Future<bool> LoginRequest(FormValues)async
{
  var URL = Uri.parse("&{BaseURL}/login");
  var PostBody = json.encode(FormValues);

  var response = await http.post(URL, headers: RequestHeader, body: PostBody);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if(ResultCode == 200 && ResultBody['status']=='Succes')
    {
      SuccessToast("Request Success");
      await WriteUserData(ResultBody);
      return true;
    }else
      {
        ErrorToast("Request fail ! try again");
        return false;
      }
}

Future<bool> RegistrationRequest(FormValues)async
{
  var URL = Uri.parse("&{BaseURL}/registration");
  var PostBody = json.encode(FormValues);

  var response = await http.post(URL, headers: RequestHeader, body: PostBody);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);

  if(ResultCode == 200 && ResultBody['status']=='Succes')
    {
      SuccessToast("Request Success");
      return true;
    }else
      {
        ErrorToast("Request fail ! try again");
        return false;
      }
}

Future<bool> VarifyEmailRequest(Email)async
{
  var URL = Uri.parse("&{BaseURL}/RecoverVerifyEmail/${Email}");


  var response = await http.get(URL, headers: RequestHeader);
  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if(ResultCode == 200 && ResultBody['status']=='Succes')
    {
      SuccessToast("Request Success");
      return true;
    }else
      {
        ErrorToast("Request fail ! try again");
        return false;
      }
}

Future<bool> VerifiOTPReques(Email, OTP)async
{
  var URL = Uri.parse("&{BaseURL}/RecoverVerifyOPT/${Email}/${OTP}");


  var response = await http.post(URL, headers: RequestHeader);
  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if(ResultCode == 200 && ResultBody['status']=='Succes')
    {
      SuccessToast("Request Success");
      return true;
    }else
      {
        ErrorToast("Request fail ! try again");
        return false;
      }
}

Future<bool> SetPasswordRequest(FormValues)async
{
  var URL = Uri.parse("&{BaseURL}/RecoverResetPass");
  var PostBody = json.encode(FormValues);
  var response = await http.post(URL, headers: RequestHeader, body: PostBody);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if(ResultCode == 200 && ResultBody['status']=='Succes')
    {
      SuccessToast("Request Success");
      return true;
    }else
      {
        ErrorToast("Request fail ! try again");
        return false;
      }
}


Future<List> TaskListRequet(Status)async
{
  var URL = Uri.parse("&{BaseURL}/ListTaskByStatus/${Status}");


  String? token = await ReadUserData("token");

  var RequestHeaderWithToken = {"Content-Type":"application/json"};

  var response = await http.get(URL, headers: RequestHeaderWithToken);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);
  if(ResultCode == 200 && ResultBody['status']=='Succes')
  {
    SuccessToast("Request Success");
    return ResultBody['data'];
  }else
  {
    ErrorToast("Request fail ! try again");
    return [];
  }

}