import 'dart:convert' as convert;
import 'package:basic_app/controllers/auth/login_controller.dart';
import 'package:basic_app/controllers/auth/registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController with LoginController,RegistrationController{

}