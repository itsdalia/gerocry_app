import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  const CustomButton({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            if (formKey.currentState!.validate()) {
              print("Form is valid, proceed with login");
            }
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 25),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Color(0xff53B175),
            ),
            child: Text(
              "Login",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFF9FF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
