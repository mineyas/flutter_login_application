import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.hint,
    this.inputType,
    this.inputAction,
    required this.icon,
  });

  final String hint;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(216, 255, 255, 255), borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: const Color.fromARGB(207, 222, 123, 123),
                size: 30,
              ),
            ),
            hintText: hint,
            hintStyle:
                const TextStyle(color: Color.fromARGB(207, 222, 123, 123)),
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    required this.hint,
    required this.inputAction,
    required this.icon,
  });

  final String hint;
  final TextInputAction? inputAction;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(216, 255, 255, 255), borderRadius: BorderRadius.circular(16)),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: const Color.fromARGB(207, 222, 123, 123),
                size: 30,
              ),
            ),
            hintText: hint,
            hintStyle:
                const TextStyle(color: Color.fromARGB(207, 222, 123, 123)),
          ),
          textInputAction: inputAction,
          obscureText: true,
        ),
      ),
    );
  }
}
