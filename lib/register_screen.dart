import 'package:flutter/material.dart';
import 'package:login_ui/login_screen.dart';
import 'package:login_ui/utils/buttond_item.dart';
import 'package:login_ui/utils/colors.dart';
import 'package:login_ui/utils/header_bar.dart';
import 'package:login_ui/utils/text_fiel.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const HeaderBar(
              text: "Register",
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  children: <Widget>[
                    const TextFieldItem(
                        hint: 'Enter Your Email', icon: Icons.email),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextFieldItem(
                        hint: 'Enter your Name', icon: Icons.person),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextFieldItem(
                        hint: 'Enter your Phone', icon: Icons.phone),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextFieldItem(
                        hint: 'Enter your Passwod', icon: Icons.key),
                    const SizedBox(
                      height: 10,
                    ),
                    const ButtonItem(
                      buttonname: 'Register',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: 'already member: ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: 'Signin',
                            style: TextStyle(color: orangeColor))
                      ])),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
