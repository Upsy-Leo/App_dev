import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar.new(
      title: const Text("Log in or Sign up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w700)),
      )
      );
  }
}
