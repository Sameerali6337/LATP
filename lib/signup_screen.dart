import 'package:flutter/material.dart';
import 'package:latp/app/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 180, 130, 190),
        appBar: AppBar(
          elevation: 3.0,
          backgroundColor: const Color.fromARGB(255, 56, 6, 65),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ),
                  );
                },
                child: const Text('signup'),
              ),
            ),
          ],
        ));
  }
}
