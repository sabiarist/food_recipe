
// class RecipeCard extends StatelessWidget {
//   const RecipeCard(
//       {Key? key,
//         required this.title,
//         required this.rating,
//         required this.cookTime,
//         required this.thumbnailUrl})
//       : super(key: key);
//
//   final String title;
//   final String rating;
//   final String cookTime;
//   final String thumbnailUrl;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Container(
//         margin: const EdgeInsets.symmetric(
//           horizontal: 22,
//           vertical: 10,
//         ),
//         width: MediaQuery.of(context).size.width,
//         height: 180,
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.5),
//               offset: const Offset(0.0, 10.0),
//               blurRadius: 10.0,
//               spreadRadius: -6.0,
//             ),
//           ],
//           image: DecorationImage(
//             colorFilter: ColorFilter.mode(
//               Colors.black.withOpacity(0.35),
//               BlendMode.multiply,
//             ),
//             image: NetworkImage(thumbnailUrl),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Stack(
//           children: [
//             Align(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 5.0),
//                 child: Text(
//                   title,
//                   style: const TextStyle(
//                     fontSize: 20,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 2,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               alignment: Alignment.center,
//             ),
//             Align(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     padding: const EdgeInsets.all(5),
//                     margin: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.redAccent.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.star,
//                           color: Colors.yellow,
//                           size: 20,
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text(rating),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.all(5),
//                     margin: const EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.redAccent.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: Row(
//                       children: [
//                         const Icon(
//                           Icons.schedule,
//                           color: Colors.yellow,
//                           size: 20,
//                         ),
//                         const SizedBox(
//                           width: 7,
//                         ),
//                         Text(cookTime),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               alignment: Alignment.bottomCenter,
//             ),
//           ],
//         ),
//       );
//
//   }
// }
