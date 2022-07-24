// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../widgets/widgets_shelf.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
             const   AuthFormInput(text: "Email"),
            const    AuthFormInput(
                  text: "Create Password",
                  isVisible: true,
                ),
         const       AuthFormInput(
                  text: "Re-Write Password",
                  isVisible: true,
                ),
                const SizedBox(
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: RichText(
                          text: const TextSpan(
                            text:
                                'Curabitur lobortis id lorem id bibendum. Ut id consecteur magna. ',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Terms of Use ',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(text: 'augue enim, pulvinar '),
                              TextSpan(
                                text: "Privacy Notice",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              TextSpan(text: " lacinia at"),
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(10),
                        ),
                        onPressed: () {},
                        child: const Text("Continue"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/**
           
 */