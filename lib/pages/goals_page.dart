import 'package:fitflow/main.dart';
import 'package:fitflow/utils/constaint.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/material.dart';
import 'package:vertical_picker/vertical_picker.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  State<GoalsPage> createState() => _GoalsPageState();
}

class _GoalsPageState extends State<GoalsPage> {
  @override
  Widget build(BuildContext context) {
    return
        // Todo: replace with goals design.
        Scaffold(
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
            const Headline(headline: "What is your Goal?"),
            //  Spacer(),
            const Tagline(
                tagline: 'This helps us to create a presonalize plan for you'),
            const Spacer(),
            // TODO: picker list
            SizedBox(
              width: 200,
              height: 250,
              child: VerticalPicker(
                  items: List.generate(
                      Constant.goalsHeading.length,
                      (index) => Center(
                            child: Text(
                              Constant.goalsHeading[index],
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          )),
                  onSelectedChanged: (indexSelected) {
                    prefs?.setString(Constant.prefGoal,
                        Constant.goalsHeading[indexSelected]);
                    setState(() {});
                  },
                  borderColor: AppColor.primaryColor,
                  itemHeight: MediaQuery.of(context).size.height / 8),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.username);
                  },
                  icon: const Icon(Icons.arrow_left),
                  label: const Text("Skip this"),
                ),
                ElevatedButton.icon(
                  onPressed: (prefs?.getString(Constant.prefGoal) == null)
                      ? null
                      : () {
                          Navigator.pushNamed(context, RouteName.username);
                        },
                  style: customButtonStlye(),
                  icon: const Icon(Icons.arrow_right),
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
