import 'package:flutter/material.dart';
import 'package:interview101/screens/signin_screen.dart';
import 'package:interview101/screens/signup_screen.dart';
import 'package:interview101/theme/theme.dart';
import 'package:interview101/widgets/custom_background.dart';
import 'package:interview101/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Column(
        children: [
          Flexible(
              flex: 8,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
                child: Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(children: [
                        TextSpan(
                            text: "Welcome Back! \n",
                            style: TextStyle(
                                fontSize: 45.0, fontWeight: FontWeight.w600)),
                        TextSpan(
                            text:
                                "Enter personal details to your employee acccount",
                            style: TextStyle(fontSize: 20.0))
                      ])),
                ),
              )),
          Flexible(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    Expanded(
                        child: WelcomeButton(
                      buttonText: 'Sign In',
                      onTap: SignInScreen(),
                      color: Colors.transparent,
                      textColor: Colors.white,
                    )),
                    Expanded(
                        child: WelcomeButton(
                      buttonText: 'Sign Up',
                      onTap: SignUpScreen(),
                      color: Colors.white,
                      textColor: lightColorScheme.primary,
                    ))
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
