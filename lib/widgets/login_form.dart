
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onTapOutside: (value) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            labelText: "email",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff53B175)),
            ),
          ),
        ),
        SizedBox(height: 30),
        TextField(
          onTapOutside: (value) {
            FocusScope.of(context).unfocus();
          },
          decoration: InputDecoration(
            labelText: "password",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff53B175)),
            ),
          ),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            "forget password?",
            style: TextStyle(color: Color(0xff181725)),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}