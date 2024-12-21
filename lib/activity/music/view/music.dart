import 'package:musixmatch_clone_namma_flutter/app/config/export.dart';

class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(child: NectText(text: "Music")),
    );
  }
}
