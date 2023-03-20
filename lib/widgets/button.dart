import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 40),
            width: 300,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromARGB(207, 222, 123, 123)),
                  overlayColor:
                      const MaterialStatePropertyAll<Color>(Colors.white24),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: const BorderSide(color: Colors.transparent)))),
              onPressed: onPressed,
              child: Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            )),
      ],
    );
  }
}
