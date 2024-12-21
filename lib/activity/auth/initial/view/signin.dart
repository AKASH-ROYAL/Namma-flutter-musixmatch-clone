import 'package:flutter/material.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signup.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/widgets/inputField.dart';
import 'package:musixmatch_clone_namma_flutter/activity/root/home/view/allow.dart';

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
        title: const Text("Sign in", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Welcome back!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const Text(
              "Login with your email to join the community",
              style: TextStyle(color: Colors.white),
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
                style: TextStyle(color: Colors.white, fontSize: 15)),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                // iconAlignment: IconAlignment.start,
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AllowPage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not on Musixmatch yet? ",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupPage()));
                    },
                    child: const Text("Sign up",
                        style: TextStyle(
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
