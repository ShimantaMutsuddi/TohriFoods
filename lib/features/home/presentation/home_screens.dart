
import 'package:flutter/material.dart';
import 'package:tohri_foods/features/product_details/presentation/product_details_screen.dart';


import '../../../../utils/constants.dart';
import '../../../common/bottom_navigation.dart';
import '../widgets/banner_widget.dart';
import '../widgets/category_section.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/service_section.dart';
import '../widgets/video_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(height: 10,),
            /// featured banner
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: BannerCard(imagePath: "assets/images/banner.png",onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) => const ProductDetailsScreen(),));

              },)
            ),
            ///category
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: CategorySection(),
            ),
            /// Service
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ServiceSection(),
            ),
            /// video
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: VideoSection(),
            ),

          ],
        ),
      ) ,
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}



