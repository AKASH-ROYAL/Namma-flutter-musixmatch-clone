import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signup.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/widgets/inputField.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/allow.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/constants.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Sign in",
            style:
            TextStyle(fontFamily: primaryFontFamily, color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Welcome back!",
                style: TextStyle(
                    fontFamily: primaryFontFamily,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const Text(
              "Login with your email to join the community",
              style:
              TextStyle(fontFamily: primaryFontFamily, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[900], // Dark background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle:
                  TextStyle(color: Colors.white60), // Hint text color
                  border: InputBorder.none, // Remove default border
                ),
                cursorColor: Colors.white, // Cursor color
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[900], // Dark background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle:
                  TextStyle(color: Colors.white60), // Hint text color
                  border: InputBorder.none, // Remove default border
                ),
                cursorColor: Colors.white, // Cursor color
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Forget your password?",
                style: TextStyle(
                    fontFamily: primaryFontFamily,
                    color: Colors.white,
                    fontSize: 15)),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffffffff),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                onPressed: () {
                  Get.offAll(
                        () => AllowPage(),
                  );
                },
                child: NectText(
                  text: "Sign in",
                  color: Colors.black,
                )).w(300),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not on Musixmatch yet? ",
                    style: TextStyle(
                      fontFamily: primaryFontFamily,
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {
                      Get.to(() => const SignupPage());
                    },
                    child: const Text("Sign up",
                        style: TextStyle(
                          fontFamily: primaryFontFamily,
                          decoration: TextDecoration.underline,
                          color: Colors.red,
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
