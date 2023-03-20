import 'package:flutter/material.dart';

import '../widgets/background_image.dart';
import '../widgets/button.dart';
import '../widgets/text_input.dart';
import '../widgets/text_link.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                      'Create your profile',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const TextInput(
                            hint: 'Firstname',
                            icon: Icons.email,
                            inputAction: TextInputAction.next,
                            inputType: TextInputType.name,
                          ),
                          const TextInput(
                              hint: 'Lastname',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              icon: Icons.edit),
                          const TextInput(
                              hint: '(+33) 07 34 56 78 98',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                              icon: Icons.phone),
                          const TextInput(
                              hint: 'email',
                              inputType: TextInputType.text,
                              inputAction: TextInputAction.next,
                              icon: Icons.email),
                          const PasswordInput(
                            hint: 'Password',
                            inputAction: TextInputAction.done,
                            icon: Icons.lock,
                          ),
                          TextLink(
                            text: 'You already have a account, Here',
                            onTap: () {
                              Navigator.pushNamed(context, '/login');
                            },
                          )

                          // Text(
                          //   'New Here? Register',
                          //   style: TextStyle(
                          //       color: Color.fromARGB(255, 177, 86, 86)),
                          // )
                        ],
                      ),
                      Button(
                        text: 'Sign Up',
                        onPressed: () {
                           Navigator.pushNamed(context, '/welcomepage');
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
