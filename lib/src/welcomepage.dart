import 'package:flutter/material.dart';
import 'package:flutter_login_application/widgets/movie_list.dart';

import '../widgets/background_image.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: const [
                Text(
                  'WELCOME BACK',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.white),
                ),
                MovieListPage(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
