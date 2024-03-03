import 'dart:ffi';

import 'package:flutter/material.dart';

enum Gender { male, female }

class Constant {
  Constant._();

  static const prefDarkTheme = "fitflow_theme";
  static const prefAge = "fitflow_age";
  static const prefGender = "fitflow_gender";
  static const prefWeight = "fitflow_weight";
  static const prefGoal = "fitflow_goal";
  static const prefUsername = "fitflow_username";
  static const prefWorkouts = "fitflow_workouts";
  static const prefNotification = "fitflow_notification";
}

class AppColor {
  static const Color primaryColor = Color(0xffE84479);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
}
