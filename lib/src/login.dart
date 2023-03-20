import 'package:flutter/material.dart';

import '../widgets/background_image.dart';
import '../widgets/button.dart';
import '../widgets/text_input.dart';
import '../widgets/text_link.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                  child: Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TextInput(
                        hint: 'Enter email',
                        icon: Icons.email,
                        inputAction: TextInputAction.next,
                        inputType: TextInputType.emailAddress,
                      ),
                      const PasswordInput(
                        hint: 'Password',
                        inputAction: TextInputAction.done,
                        icon: Icons.lock,
                      ),
                      TextLink(
                        text: 'New Here? Register',
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      )
                    ],
                  ),
                ),
                Button(
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, '/welcomepage');
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
