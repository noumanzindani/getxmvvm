import 'package:flutter/material.dart';
import 'package:getxmvvm/data/app_exception.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FloatingActionButton(
          onPressed: () {
            throw InternetException('massage');
          },
        ),
      ),
    );
  }
}
