import 'package:fitflow/main.dart';
import 'package:fitflow/utils/constaint.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AgePage extends StatefulWidget {
  const AgePage({super.key});

  @override
  State<AgePage> createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  TextEditingController ageController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ageController.text = prefs?.getInt(Constant.prefAge).toString() ?? '20';
  }

  @override
  Widget build(BuildContext context) {
    return
        // Todo:paste the about page code here.

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
            const Headline(headline: "How old are you?"),
            //  Spacer(),
            const Tagline(
                tagline: 'This help us to create your personalized plan'),
            const Spacer(),
            SizedBox(
              width: 150,
              child: TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 40,
                ),
                cursorColor: AppColor.primaryColor,
                decoration: const InputDecoration(
                    suffix: Text(
                  "years",
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
                    Navigator.pushNamed(context, RouteName.weight);
                  },
                  icon: const Icon(Icons.arrow_left),
                  label: const Text("Skip this"),
                ),
                ElevatedButton.icon(
                  onPressed: (ageController.text.isEmpty)
                      ? null
                      : () {
                          prefs?.setInt(
                              Constant.prefAge, int.parse(ageController.text));
                          Navigator.pushNamed(context, RouteName.weight);
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
