import 'package:fitflow/pages/about_page.dart';
import 'package:fitflow/pages/age_page.dart';
import 'package:fitflow/pages/dashboard_page.dart';
import 'package:fitflow/pages/on_Boarding.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Routes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.dashboard:
        return MaterialPageRoute(
          builder: (context) => const DashBoardPage(),
        );
      case RouteName.onBoard:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingPage(),
        );
      case RouteName.about:
        return MaterialPageRoute(
          builder: (context) => const AboutPage(),
        );
      case RouteName.age:
        return MaterialPageRoute(
          builder: (context) => const AgePage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("404"),
              ),
            );
          },
        );
    }
  }
}
