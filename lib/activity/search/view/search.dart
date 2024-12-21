import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';
import 'package:get/get.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: textGrey,
              )),
        ),
        leadingWidth: 40,
        title: NectText(
          text: "Search",
          size: 20,
          color: textGrey,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                color: Colors.grey[900], // Dark background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white), // Text color
                decoration: const InputDecoration(
                  hintText: 'search...',
                  hintStyle: TextStyle(
                      color: Colors.white60, fontWeight: FontWeight.w400),
                  // Hint text color
                  border: InputBorder.none, // Remove default border
                ),
                cursorColor: Colors.white, // Cursor color
              ),
            ),
            NectText(
              text: "Get Your favorite lyrics, now",
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            10.heightBox,
            NectText(
              text: "Search for songs, artists and albums",
              size: 12,
              color: textGrey,
            ),
          ],
        ).p(20),
      ),
    );
  }
}
