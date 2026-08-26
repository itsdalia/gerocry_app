import 'package:flutter/material.dart';

class AccountOption extends StatelessWidget {
  const AccountOption({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),

              Icon(Icons.arrow_back_ios, size: 17),
            ],
          ),
        ),
        Divider(color: Color(0xffE2E2E2)),
      ],
    );
  }
}
