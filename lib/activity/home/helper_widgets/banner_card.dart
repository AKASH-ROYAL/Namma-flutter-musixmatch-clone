import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NectText(
                text: title,
                size: 14,
                textAlign: TextAlign.start,
                maxLines: 2,
                fontWeight: FontWeight.w600,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ).wh(180, 60),
          6.heightBox,
          Image.asset(
            image,
            width: 190,
            height: 90,
            fit: BoxFit.fill,
          ).pOnly(left: 10)
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
