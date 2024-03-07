import 'dart:ffi';

import 'package:flutter/material.dart';

enum Gender { male, female }

class Constant {
  Constant._();

  static const prefDarkTheme = "fitflow_theme";
  // static const prefAge = "fitflow_age";
  static const int prefAge = 15;
  static const prefGender = "fitflow_gender";
  static const prefWeight = "fitflow_weight";
  static const prefGoal = "fitflow_goal";
  static const prefUsername = "fitflow_username";
  static const prefWorkouts = "fitflow_workouts";
  static const prefNotification = "fitflow_notification";

  static const goalsHeading = [
    "Beginner",
    "Irregular training",
    "Medium",
    "Advance"
  ];
  static const goalsTitle = [
    "\n I want to start workout",
    "\n i train 1-2 times of week.",
    "\n i train 3-5 times of week",
    "\n I train more than 5 times a week."
  ];
}

class AppColor {
  static const Color primaryColor = Color(0xffE84479);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
}
