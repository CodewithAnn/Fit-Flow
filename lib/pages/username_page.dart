import 'package:fitflow/main.dart';
import 'package:fitflow/utils/constaint.dart';
import 'package:fitflow/utils/routes/routes_Name.dart';
import 'package:fitflow/utils/widgets.dart';
import 'package:flutter/material.dart';

class UserNamePage extends StatefulWidget {
  const UserNamePage({super.key});

  @override
  State<UserNamePage> createState() => _UserNamePageState();
}

class _UserNamePageState extends State<UserNamePage> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usernameController.text = (prefs?.getString(Constant.prefUsername) == null)
        ? ""
        : prefs?.getString(Constant.prefUsername) ?? "";
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
            const Headline(headline: "What's your username?"),
            //  Spacer(),
            const Tagline(
                tagline:
                    'Give a username that can identify yourself on the platform'),
            const Spacer(),
            SizedBox(
              width: 205,
              child: TextFormField(
                controller: _usernameController,
                style: const TextStyle(
                  fontSize: 30,
                ),
                cursorColor: AppColor.primaryColor,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor),
                  ),
                  hintText: "Enter your username",
                  hintStyle: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.homepage);
                  },
                  icon: const Icon(Icons.arrow_left),
                  label: const Text("Skip this"),
                ),
                ElevatedButton.icon(
                  onPressed: (_usernameController.text.isEmpty)
                      ? null
                      : () {
                          prefs?.setString(
                              Constant.prefUsername, _usernameController.text);
                          Navigator.pushNamed(context, RouteName.homepage);
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
