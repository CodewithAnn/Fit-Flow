import 'package:fitflow/main.dart';
import 'package:fitflow/utils/constaint.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 10,
          right: 10,
          bottom: 10,
        ),
        child: Column(
          children: [
            Headline(headline: "Tell us about yourself"),
            //  Spacer(),
            Tagline(
                tagline:
                    'To give you a better experience, we need to know your gender'),
            Spacer(),
            SizedBox(
              width: 150,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Gender.values.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 30.0, top: 8),
                    child: GestureDetector(
                      onTap: () {
                        prefs?.setString(
                            Constant.prefGender, Gender.values[index].name);
                        setState(() {});
                      },
                      child: ClipOval(
                        child: Container(
                          height: 150,
                          width: 150,
                          color: (Gender.values[index].name ==
                                  prefs?.getString(Constant.prefGender))
                              ? Color(0xffE84479)
                              : Colors.blueGrey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                (Gender.values[index].name == Gender.male.name)
                                    ? Icons.male
                                    : Icons.female,
                                color: Colors.white,
                                size: 65,
                              ),
                              Text(
                                Gender.values[index].name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.age);
                  },
                  icon: Icon(Icons.arrow_left),
                  label: const Text("Skip this"),
                ),
                ElevatedButton.icon(
                  onPressed: (prefs?.getString(Constant.prefGender) != null)
                      ? () {
                          Navigator.pushNamed(context, RouteName.age);
                        }
                      : null,
                  style: customButtonStlye(),
                  icon: Icon(Icons.arrow_right),
                  label: const Text(
                    "Next",
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
