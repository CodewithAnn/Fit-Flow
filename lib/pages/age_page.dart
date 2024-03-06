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
  final TextEditingController ageController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    ageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // this line ensure the we store the user input.
    // this  line if the input is null then set the default age 20
    ageController.text = (prefs?.getInt(Constant.prefAge.toString()) == null)
        ? "17"
        : prefs?.getInt(Constant.prefAge.toString()).toString() ?? '20';
    // ageController.dispose();
  }

// Todo : Fix bug
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
            const Headline(headline: "How old are you?"),
            //  Spacer(),
            const Tagline(
                tagline: 'This help us to create your personalized plan'),
            const Spacer(),
            SizedBox(
              width: 105,
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
                  style: TextStyle(fontSize: 20),
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
                          prefs?.setInt(Constant.prefAge.toString(),
                              int.parse(ageController.text));
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
