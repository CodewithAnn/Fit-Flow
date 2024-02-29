import 'package:fitflow/app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
// instances of var prefs.
  prefs = await SharedPreferences.getInstance();

  runApp(const MyApp());
}
