import 'package:flutter/material.dart';
import '../signin_page.dart';

class Screen2 extends StatelessWidget {
  final String skipButton;
  const Screen2({super.key, required this.skipButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const SigninPage()));
                  },
                  child: Text(
                    skipButton,
                    style: TextStyle(
                        color: Colors.red[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "main_font",
                        letterSpacing: 1),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 20, child: Image.asset("assets/images/eloonboarding.png")),
        Expanded(
          flex: 14,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: "main_font",
                          letterSpacing: 1),
                      children: <TextSpan>[
                        const TextSpan(text: "Wishlist: Where "),
                        TextSpan(
                          text: "Fashion Dreams ",
                          style: TextStyle(color: Colors.red[800]),
                        ),
                        const TextSpan(text: "Begin"),
                      ]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin vestibulum placerat.",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                      fontFamily: "main_font",
                      letterSpacing: 1),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
