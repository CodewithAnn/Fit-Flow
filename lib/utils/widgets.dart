import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headline});
  final String headline;

  @override
  Widget build(BuildContext context) {
    return Text(
      headline,
      style: const TextStyle(
        color: Color(0xffE84479),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Tagline extends StatelessWidget {
  const Tagline({super.key, required this.tagline});
  final String tagline;

  @override
  Widget build(BuildContext context) {
    return Text(
      tagline,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 16,
      ),
    );
  }
}

ButtonStyle customButtonStlye() {
  return ElevatedButton.styleFrom(
      fixedSize: const Size(150, 50),
      shape: StadiumBorder(),
      backgroundColor: Color(0xffE84479),
      foregroundColor: Colors.white,
      disabledBackgroundColor: Colors.blueGrey);
}

TextButtonThemeData customTextButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: Color(0xffE84479)),
);
