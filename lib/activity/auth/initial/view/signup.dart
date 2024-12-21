import 'package:flutter/material.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signin.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/widgets/inputField.dart';
import 'package:musixmatch_clone_namma_flutter/activity/root/home/view/allow.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Sign up", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          children: [
            const Text("Create your own Account",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const Text(
              "Sign up with your email to join the community",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),

            //First Name
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[900], // Dark background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  hintText: 'First Name',
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

            //Last Name
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[900], // Dark background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  hintText: 'Last Name',
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

            //Email
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

            //Password
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
                    "Sign up",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? ",
                    style: TextStyle(
                      color: Colors.white,
                    )),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()));
                    },
                    child: const Text("Sign in",
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
