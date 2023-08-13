import 'package:flutter/material.dart';
import 'package:timex_mobile_app/screens/bottom_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const BottomBar();
                },
              ),
            );
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
