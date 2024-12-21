import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    super.key,
    required this.image,
    required this.name,
    required this.artist,
  });

  final String image;
  final String name;
  final String artist;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * .4,
      child: Column(
        children: [
          Image.asset(image),
          8.heightBox,
          NectText(
            textAlign: TextAlign.start,
            text: name,
            color: Colors.white,
          ),
          NectText(
            text: artist,
            color: Colors.white,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
