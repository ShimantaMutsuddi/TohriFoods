import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants.dart';


class CustomSearchBar extends StatelessWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onClearTap;
  final TextEditingController? controller;

  const CustomSearchBar({
    super.key,
    this.onSearchTap,
    this.onClearTap,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstants.primaryColor, // Green background

      child: TextField(
        controller: controller,
        onTap: onSearchTap,

        decoration: InputDecoration(
          hintText: 'অনুসন্ধান করুন',

          hintStyle: TextStyle(
            color: Colors.grey[600],

            fontSize: 14,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[600],
            size: 20,
          ),
          suffixIcon: Icon(Icons.filter_list),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        ),
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}