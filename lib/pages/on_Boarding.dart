import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            child: Image(
              image: AssetImage("assets/fitness.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.2, 0.8],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black,
                  Colors.black26,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Create a Workout Plan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.normal),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: .0),
                  child: Text("to Fit",
                      style: TextStyle(
                          color: Color(0xffE84479),
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 50),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Color(0xffE84479)),
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.dashboard);
                  },
                  icon: const Icon(
                    Icons.arrow_right,
                    color: Colors.white,
                  ),
                  label: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 35)
              ],
            ),
          )
        ],
      ),
    );
  }
}
