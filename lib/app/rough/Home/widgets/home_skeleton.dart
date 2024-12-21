// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:shimmer_pro/shimmer_pro.dart';
//
// class HomeSkeleton extends StatelessWidget {
//   const HomeSkeleton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 10),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   buildListSkeleton(),
//                   Container(
//                     height: 180,
//                     width: double.infinity,
//                     decoration: const BoxDecoration(
//                       gradient: LinearGradient(
//                         colors: [
//                           Colors.black,
//                           Colors.black,
//                           Colors.transparent
//                         ],
//                         stops: [0.0, 0.3, 1.0],
//                         begin: Alignment.topCenter,
//                         end: Alignment.bottomCenter,
//                       ),
//                     ),
//                     child: BackdropFilter(
//                       filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
//                       child: Center(
//                         child: Image.asset(
//                           "assets/images/netflix_logo_no_bg.png",
//                           height: 75,
//                           // color: Colors.transparent,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               buildSkeletonTemplate(),
//               buildSkeletonTemplate(),
//               buildSkeletonTemplate(),
//               buildSkeletonTemplate(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildSkeletonTemplate() {
//     return Column(
//       children: [buildTitleSkeleton(), buildListSkeleton()],
//     );
//   }
//
//   Widget buildListSkeleton() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 10),
//         child: Row(
//           children: List.generate(
//             50,
//             (index) => ShimmerPro.sized(
//               depth: 50,
//               light: ShimmerProLight.lighter,
//               scaffoldBackgroundColor: Colors.white,
//               height: 160,
//               width: 100,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildTitleSkeleton() {
//     return Row(
//       children: [
//         ShimmerPro.sized(
//           depth: 50,
//           light: ShimmerProLight.lighter,
//           scaffoldBackgroundColor: Colors.white,
//           height: 30,
//           width: 180,
//         ),
//       ],
//     );
//   }
// }
