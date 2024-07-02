import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kido_loom/utils/color.dart';

class OverlappingImagesWidget extends StatelessWidget {
  final topImagePath;
  final bottomImagePath;
  double imageWidth;

  OverlappingImagesWidget({
    required this.topImagePath,
    required this.bottomImagePath,
    required this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: imageWidth,
            height: imageWidth,
            child: Image.asset(
              bottomImagePath,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 0,
            child: Container(
              width: imageWidth * 0.7, // Adjust the width of the top image
              height: imageWidth * 0.7,
              child: Image.asset(
                topImagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//  Widget Button2(
//     String image1Path, String image2Path, double height, double width) {
//   return Container(
//       height: height * 0.3,
//       width: width * 0.25,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         gradient: container1,
//       ),
//       child: Stack(
//         children: [
//           Positioned(
//             left: -30,
//             bottom: height * 0.02,
//             child: Image.asset(
//               image1Path,
//               width: width * 0.5,
//             ),
//           ),
//           Positioned(
//             top: height * 0.17,
//             child: Container(
//               height: height * 0.15,
//               width: width * 0.25,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(image2Path),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ));
// }
