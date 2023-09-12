// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:impo_x/core/app/utiles/extensions/context/style_shortcut.dart';
// import 'package:impo_x/core/app/view/themes/colors/color_schemes.dart';
// import 'package:story_view/widgets/story_view.dart';
// import 'D:\/Android/StudioProjects/x/impo_x/lib/core/app/constants/assets_paths.dart';
// import 'D:\/Android/StudioProjects/x/impo_x/lib/core/app/view/themes/styles/decorations.dart';
//
// class StoryWidget extends StatelessWidget {
//   final String imagePath, title, description;
//
//   const StoryWidget({
//     Key? key,
//     required this.imagePath,
//     required this.title,
//     required this.description,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 485,
//                 decoration: BoxDecoration(
//                   color: context.colorScheme.surface,
//                   borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(32), bottomRight: Radius.circular(32)),
//                   image: !context.isDarkMode
//                       ? const DecorationImage(image: AssetImage(AssetPaths.storyBackground), fit: BoxFit.fitWidth)
//                       : null,
//                 ),
//                 child: Center(
//                   child: Padding(
//                     padding: Decorations.pagePaddingHorizontal.copyWith(top: 100),
//                     child: Image.asset(imagePath),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 height: 160,
//                 left: 16,
//                 child: Row(
//                   children: [
//                     SvgPicture.asset(AssetPaths.blueTick),
//                     const SizedBox(width: 2),
//                     Text(
//                       'impo.app',
//                       style: context.textTheme.bodySmall?.copyWith(
//                         color: Get.isDarkMode ? context.colorScheme.onSurface : lightColorScheme.inverseSurface,
//                       ),
//                     ),
//                     const SizedBox(width: 8),
//                     CircleAvatar(
//                       radius: 14,
//                       child: SvgPicture.asset(AssetPaths.impoStoryLogo),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: Decorations.paddingHorizontal),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   title,
//                   style: context.textTheme.displaySmall,
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   description,
//                   style: context.textTheme.bodyMedium?.copyWith(letterSpacing: -0.5),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(),
//         ],
//       ),
//     );
//   }
// }
