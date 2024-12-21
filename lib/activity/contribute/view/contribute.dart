import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class Contribute extends StatelessWidget {
  const Contribute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/contribute01.jpg"),
            ),
            20.heightBox,
            const Text("Join the Community",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: primaryFontFamily,
                    fontSize: 30)),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Earn points, level up and unblock every time  you contribute to your favourite lyrics",
              style: TextStyle(
                  fontFamily: primaryFontFamily,
                  color: Colors.grey,
                  fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: textRed,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                onPressed: () {
                  Get.to(
                    () => const SigninPage(),
                  );
                },
                child: const NectText(
                  text: "Sign in",
                  color: Colors.white,
                )).w(300),
          ],
        ),
      ),
    );
  }
}
