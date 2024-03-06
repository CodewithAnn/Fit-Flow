import 'dart:ffi';

import 'package:fitflow/main.dart';
import 'package:fitflow/utils/constaint.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  TextEditingController weightController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // its check if value is null then set 46 kg as default and
    weightController.text = (prefs?.getDouble(Constant.prefWeight) == null)
        ? "46"
        //if value get bull set value at 50 kg.
        : prefs?.getDouble(Constant.prefWeight).toString() ?? "50";
  }

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
            const Headline(headline: "What is your weight?"),
            //  Spacer(),
            const Tagline(tagline: 'You can change it later'),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.39,
              child: TextFormField(
                controller: weightController,
                keyboardType: TextInputType.number,
                // textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40,
                ),
                cursorColor: AppColor.primaryColor,
                decoration: const InputDecoration(
                    suffix: Text(
                  "Kg",
                  style: TextStyle(fontSize: 30),
                )),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.goals);
                  },
                  icon: const Icon(Icons.arrow_left),
                  label: const Text("Skip this"),
                ),
                ElevatedButton.icon(
                  onPressed: (weightController.text.isEmpty)
                      ? null
                      : () {
                          // error cause if yyou don't use .setDouble() and double.parse()
                          prefs?.setDouble(Constant.prefWeight,
                              double.parse(weightController.text));
                          Navigator.pushNamed(context, RouteName.goals);
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
