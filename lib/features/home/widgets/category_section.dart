import 'package:flutter/material.dart';

import 'category_card.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "সমস্ত বিভাগ",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF06161C),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "সব দেখুন",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF65B741),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * .15,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CategoryCard(
                title: "ফল",
                imagePath: "assets/images/fruits.png",
                onTap: () {},
              ),
              CategoryCard(
                title: "গবাদি",
                imagePath: "assets/images/animal.png",
                onTap: () {},
              ),
              CategoryCard(
                title: "কৃষিজ",
                imagePath: "assets/images/vegetables.png",
                onTap: () {},
              ),
              CategoryCard(
                title: "মসল্লা ",
                imagePath: "assets/images/herbs.png",
                onTap: () {},
              ),
              CategoryCard(
                title: "বেকারি ",
                imagePath: "assets/images/bekary.png",
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
