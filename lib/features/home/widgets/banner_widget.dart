
import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {

  final String imagePath;
  final VoidCallback? onTap;

  const BannerCard({
    super.key,

    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    //final screenWidth = mediaQuery.size.width;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            // width: screenWidth * 0.15, // Dynamic image size
            // height: screenWidth * 0.15,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
