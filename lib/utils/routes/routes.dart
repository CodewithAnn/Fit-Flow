import 'package:fitflow/pages/dashboard_page.dart';
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
