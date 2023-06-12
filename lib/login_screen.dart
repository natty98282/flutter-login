import 'package:flutter/material.dart';
import 'package:login_ui/register_screen.dart';
import 'package:login_ui/utils/buttond_item.dart';
import 'package:login_ui/utils/colors.dart';
import 'package:login_ui/utils/header_bar.dart';
import 'package:login_ui/utils/text_fiel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const HeaderBar(
              text: "LogIn",
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  children: [
                    const TextFieldItem(
                        hint: 'Enter Your Email', icon: Icons.email),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextFieldItem(
                        hint: 'Enter your Password', icon: Icons.key),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: const Text('Forgot Password?'),
                    ),
                    const ButtonItem(
                      buttonname: 'LogIn',
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                              text: "Don't have an account: ",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: "Register",
                              style: TextStyle(color: orangeColor)),
                        ]),
                      ),
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
