import 'package:flutter/material.dart';
import 'package:kido_loom/utils/color.dart';

class TabItem extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isSelected;
  final void Function()? onTap;

  const TabItem({
    Key? key,
    required this.text,
    required this.imagePath,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            imagePath,
            color: isSelected ? txt1 : null,
            width: 30,
            height: 30, // Adjust height if necessary
          ),
          SizedBox(height: 4), // Add spacing between image and text
          Text(
            text,
            style: TextStyle(
              color: isSelected ? font1 : Colors.grey,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
