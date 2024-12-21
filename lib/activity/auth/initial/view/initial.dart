import 'package:flutter/material.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/view/signin.dart';
import 'package:musixmatch_clone_namma_flutter/activity/auth/initial/widgets/inputField.dart';
import 'package:sign_in_button/sign_in_button.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/assets/images/logo.png",
                scale: 0.1,
              ),
              const Text(
                "Get Started!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Join our amazing community of music lovers",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              SignInButtonBuilder(
                text: 'Continue with Google',
                icon: Icons.email,
                onPressed: () {},
                backgroundColor: Colors.blueGrey.shade700,
              ),
              SignInButton(
                Buttons.facebook,
                text: "Sign up with Google",
                onPressed: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "or ",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SigninPage()));
                      },
                      child: const Text("use your email",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            color: Colors.white,
                          )))
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              //Todo : Get it to the bottom

              const Divider(
                color: Color.fromARGB(255, 80, 79, 79),
                thickness: 1,
              ),
              const Text("Are you an Artist?",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Go to Musixmatch Pro",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
