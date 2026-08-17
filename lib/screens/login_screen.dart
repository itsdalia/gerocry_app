import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28.42),
                Center(child: Image.asset("assets/images/carrot.png")),
                SizedBox(height: 100.2),
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Enter your Email and password",
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  onTapOutside: (value) {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: UnderlineInputBorder(),
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
                InkWell(
                  onTap: () {
                    print("on Tapped");
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
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Singup",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xff53B175),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
