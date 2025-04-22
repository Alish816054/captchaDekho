import 'package:captchadekho/Home/Welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset:
      //     true, // 👈 Important to push up content with keyboard
      body: SafeArea(
        child: SingleChildScrollView(
          // 👇 Added to allow the entire UI to scroll
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Welcome !",
                      style: TextStyle(fontSize: 24, color: Color(0XFF3F857C)),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text("Login", style: TextStyle(fontSize: 23)),
                  ],
                ),
                SizedBox(height: 250),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(
                      Icons.person_2_outlined,
                    ), // 👈 prefixIcon instead of prefix + padding
                    filled: true,
                    fillColor: Color(0XFFF0F7F4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  // obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    filled: true,
                    fillColor: Color(0XFFF0F7F4),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFF9E55DC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  "Forgot your password ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 200),
                Text(
                  "SIGN UP",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
