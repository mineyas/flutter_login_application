import 'package:flutter/cupertino.dart';

class TextLink extends StatelessWidget {
  const TextLink({
    super.key,
    required this.onTap,
    required this.text,
  });
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(color: Color.fromARGB(255, 121, 60, 67)),
      ),
    );
  }
}


// Navigator.pushNamed(context, "register")