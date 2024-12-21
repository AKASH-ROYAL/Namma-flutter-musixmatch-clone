import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("assets/images/logo.png"),
                            fit: BoxFit.fill)),
                    height: 65,
                    width: 65,
                  ),
                  const Text(
                    "Get Started!",
                    style: TextStyle(
                        fontFamily: primaryFontFamily,
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  10.heightBox,
                  const Text(
                    "Join our amazing community of music lovers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: primaryFontFamily,
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.withOpacity(.3),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                      onPressed: () {},
                      child: HStack(
                        [
                          const Icon(Icons.email),
                          30.widthBox,
                          const NectText(
                            text: "Continue with Google",
                            size: 16,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      )).w(300),
                  10.heightBox,
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff17A9FD),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)))),
                      onPressed: () {},
                      child: HStack(
                        [
                          const Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          30.widthBox,
                          const NectText(
                            text: "Continue with Facebook",
                            size: 16,
                            fontWeight: FontWeight.w500,
                          )
                        ],
                      )).w(300),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "or ",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: primaryFontFamily,
                            color: Colors.white),
                      ),
                      InkWell(
                          onTap: () {
                            Get.to(() => const SigninPage(),
                                transition: Transition.rightToLeft);
                          },
                          child: const Text("use your email",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: primaryFontFamily,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                                color: Colors.white,
                              )))
                    ],
                  ),
                ],
              ).expand(),

              //Todo : Get it to the bottom

              const Divider(
                color: Color.fromARGB(255, 80, 79, 79),
                thickness: 1,
              ),
              50.heightBox,
              const Text("Are you an Artist?",
                  style: TextStyle(
                    fontFamily: primaryFontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  )),
              20.heightBox,

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Go to Musixmatch Pro",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        fontFamily: primaryFontFamily,
                        color: Colors.white,
                      )),
                  Icon(
                    Icons.open_in_new,
                    color: Colors.white,
                  )
                ],
              ),
              30.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
