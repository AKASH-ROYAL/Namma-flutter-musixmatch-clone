import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          children: [
            Image.asset("lib/assets/images/banner.png", scale: 0.1),
            SizedBox(
              height: 20,
            ),
            const Text("Please allow us to show the lyrics above other apps",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            const Text(
              "We'll show you the lyrics while your'e listening to music on your favorite musice players",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 430,
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
                    "Allow access",
                    style: TextStyle(color: Colors.black),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
