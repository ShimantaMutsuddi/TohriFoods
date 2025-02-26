import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';


class ProductCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.imagePath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          width: screenWidth / 3.5, // Responsive width (adjust as needed)
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppConstants.primaryColor,
            borderRadius: BorderRadius.circular(12.0),
           // border: Border.all(color: AppConstants.primaryColor, width: 2.0),
            /*boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],*/
          ),
          child: Image.asset(
            imagePath,
            width: screenWidth * 0.15, // Dynamic image size
            height: screenWidth * 0.15,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}