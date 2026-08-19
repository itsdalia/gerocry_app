import 'package:flutter/material.dart';

class DontHaveWidget extends StatelessWidget {
  const DontHaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: () {
                print("Signup tapped");
              },
              child: Text(
                "Singup",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff53B175),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
