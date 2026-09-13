import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const HomeSearchField({super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff53B175),
      onChanged: onChanged,
      onTapOutside: (v) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        fillColor: const Color(0xffF2F3F2),
        filled: true,
        hintText: "search store",
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 15),
          child: Icon(Icons.search),
        ),
        prefixIconConstraints: const BoxConstraints(maxWidth: 43, maxHeight: 40),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}