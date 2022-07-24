import 'package:flutter/material.dart';

class AuthFormInput extends StatefulWidget {
  final String text;
  final bool isVisible;
  AuthFormInput({
    Key? key,
    required this.text,
    this.isVisible = false,
  }) : super(key: key);

  @override
  State<AuthFormInput> createState() => _AuthFormInputState();
}

class _AuthFormInputState extends State<AuthFormInput> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(
            height: 2,
          ),
          TextFormField(
            obscureText: _isVisible ? false : true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    icon: widget.isVisible
                        ? Icon(_isVisible
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined)
                        : Container()),
                hoverColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
