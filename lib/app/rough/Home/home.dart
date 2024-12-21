// import 'dart:ui';
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: BlocBuilder<MovieBloc, MovieState>(
//         builder: (context, state) {
//           if (state is MovieLoading) {
//             return const HomeSkeleton();
//           } else if (state is MovieLoaded) {
//             return HomeLoaded(movies: state.movies);
//           } else if (state is MovieError) {
//             return Center(child: Text('Error: ${state.error}'));
//           } else {
//             return const Center(child: Text('Initial State'));
//           }
//         },
//       ),
//     );
//   }
// }
//
// class HomeLoaded extends StatelessWidget {
//   final List<Movie> movies;
//
//   const HomeLoaded({super.key, required this.movies});
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
//                   buildListView(movies),
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
//               buildMovieList(title: "Netflix Originals", movies: movies),
//               buildMovieList(title: "Trending Now", movies: movies),
//               buildMovieList(title: "Popular on Netflix", movies: movies),
//               buildMovieList(title: "Most Watched", movies: movies),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildMovieList({required String title, required List<Movie> movies}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: const EdgeInsets.symmetric(vertical: 10),
//           child: Text(
//             title,
//             style: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//         ),
//         buildListView(movies),
//       ],
//     );
//   }
//
//   Widget buildListView(List<Movie> movies) {
//     return Container(
//       height: 180,
//       margin: const EdgeInsets.only(bottom: 20),
//       child: ListView.builder(
//         itemCount: movies.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Container(
//             margin: const EdgeInsets.only(right: 10),
//             child: InkWell(
//               onTap: () {
//                 customSnackbar(
//                   context: context,
//                   message:
//                       'Movie Name : ${movies[index].title}\nMovie Description : ${movies[index].description}',
//                 );
//               },
//               child: Container(
//                 height: 180,
//                 width: 100,
//                 alignment: Alignment.bottomCenter,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                     fit: BoxFit.fill,
//                     image: NetworkImage(
//                       movies[index].image,
//                     ),
//                   ),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.black26,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
//                   child: Text(
//                     movies[index].title,
//                     textAlign: TextAlign.center,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
