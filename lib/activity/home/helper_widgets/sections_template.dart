import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class SectionsTemplate extends StatelessWidget {
  const SectionsTemplate(
      {super.key,
      required this.title,
      required this.actionIcon,
      required this.iconColor,
      required this.body,
      required this.expandText,
      this.expand = true,
      this.expandOnTap});

  final String title;
  final String expandText;
  final IconData actionIcon;
  final Color iconColor;
  final Widget body;

  final bool expand;

  final VoidCallback? expandOnTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              NectText(
                text: title,
                size: 20,
                maxLines: 2,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.bold,
              ).expand(),
              35.widthBox,
              Container(
                decoration: BoxDecoration(
                    color: iconColor.withOpacity(.2), shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      actionIcon,
                      color: iconColor,
                    )),
              )
            ],
          ).p16(),
          body.px16(),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            child: NectText(
              text: expandText,
              color: textRed,
              fontWeight: FontWeight.w600,
            ),
          ).p16().onTap(expandOnTap),
          Divider(
            thickness: 0.5,
            color: textGrey,
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
