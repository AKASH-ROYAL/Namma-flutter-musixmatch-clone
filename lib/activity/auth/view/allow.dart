import 'package:musixmatch_clone_namma_flutter/activity/root/view/root.dart';
import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class AllowPage extends StatefulWidget {
  const AllowPage({super.key});

  @override
  State<AllowPage> createState() => _AllowPageState();
}

class _AllowPageState extends State<AllowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          16.heightBox,
          Image.asset("assets/images/banner.png", scale: 0.1),
          const SizedBox(
            height: 20,
          ),
          const Text("Please allow us to show the lyrics above other apps",
              style: TextStyle(
                  fontFamily: primaryFontFamily,
                  color: Colors.white,
                  fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "We'll show you the lyrics while your'e listening to music on your favorite musice players",
            style: TextStyle(
                fontFamily: primaryFontFamily,
                color: Colors.grey,
                fontSize: 16),
          ),
          const Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffffffff),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)))),
              onPressed: () {
                Get.to(
                  () => const Root(),
                );
              },
              child: const NectText(
                text: "Allow Access",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )).w(300),
        ],
      ).p16(),
    );
  }
}
