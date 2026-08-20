import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.27),
      child: Column(
        children: [
          Center(child: Image.asset("assets/images/carrot.png", width: 30)),

          SizedBox(height: 7.6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4C4F4D),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          TextFormField(
            cursorColor: Color(0xff53B175),
            onTapOutside: (v) {
              FocusScope.of(context).unfocus();
            },
            decoration: InputDecoration(
              fillColor: Color(0xffF2F3F2),
              filled: true,
              hintText: "search store",
              prefixIcon: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.search),
              ),
              prefixIconConstraints: BoxConstraints(
                maxWidth: 43,
                maxHeight: 40,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
