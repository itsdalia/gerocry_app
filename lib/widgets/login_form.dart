import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const LoginForm({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            onTapOutside: (value) {
              FocusScope.of(context).unfocus();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your email";
              }
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return "Enter a valid email";
              }
              return null;
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
          TextFormField(
            obscureText: true,
            onTapOutside: (value) {
              FocusScope.of(context).unfocus();
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Enter your password";
              }
              if (value.length < 6) {
                return "Password must be at least 6 characters";
              }
              if (!RegExp(r'[A-Z]').hasMatch(value)) {
                return "Password must contain an uppercase letter";
              }
              if (!RegExp(r'[a-z]').hasMatch(value)) {
                return "Password must contain a lowercase letter";
              }
              if (!RegExp(r'[0-9]').hasMatch(value)) {
                return "Password must contain a number";
              }
              return null;
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
      ),
    );
  }
}
