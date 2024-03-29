import 'package:fitflow/utils/routes/routes.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.light(),textButtonTheme: customTextButtonTheme
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.onBoard,
      onGenerateRoute: Routes.genrateRoute,
    );
  }
}
