import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../common/bottom_navigation.dart';
import '../../home/widgets/banner_widget.dart';
import '../../home/widgets/custom_appbar.dart';
import '../../home/widgets/custom_searchbar.dart';
import '../../home/widgets/video_section.dart';
import '../widgets/description_section.dart';
import '../widgets/process_section.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
        ),        title: Text(
          "গরুটি জবাই হবে",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(color: AppConstants.primaryColor),
              child: CustomSearchBar(),
            ),
            SizedBox(height: 10),

            /// featured banner
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: BannerCard(
                imagePath: "assets/images/cowfull.png",
                onTap: () {},
              ),
            ),

            /// video
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: VideoSection(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: DescriptionSection(
                title: 'বিস্তারিত',
                desc:
                    "Lorem Ipsum হল মুদ্রণ এবং টাইপসেটিং শিল্পের ডামি পাঠ্য। লোরেম ইপসাম 1500 এর দশক থেকে শিল্পের মানক ডামি টেক্সট হয়েছে, যখন একটি অজানা প্রিন্টার টাইপের একটি গ্যালি নিয়েছিল এবং একটি টাইপ নমুনা বই তৈরি করতে এটিকে স্ক্র্যাম্বল করেছিল। এটি শুধুমাত্র পাঁচ শতক নয়, ইলেকট্রনিক টাইপসেটিং-এ লাফিয়েও টিকে আছে, যা অপরিহার্যভাবে অপরিবর্তিত রয়েছে। এটি 1960-এর দশকে লোরেম ইপসাম প্যাসেজ সম্বলিত লেট্রাসেট শীট প্রকাশের মাধ্যমে এবং আরও সম্প্রতি লোরেম ইপসামের সংস্করণ সহ অ্যালডাস পেজমেকারের মতো ডেস্কটপ প্রকাশনা সফ্টওয়্যারের মাধ্যমে জনপ্রিয় হয়েছিল।",
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: DescriptionSection(
                title: 'বিস্তারিত',
                desc:
                    "উপরে উল্লেখয়িত তারিখে নিজস্ব ফার্মের গরুটি জবাই করা হবে"
                    "\n2. "
                    " ৫ কেজি করে পে করে প্রি-বুকিং দিতে হবে"
                    "\n3. "
                    "মোবাইলে আপডেট পেতে থাকবেন"
                    "মাংস আপনার ঠিকানায় পোঁছানো হবে ",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: ProcessSection(),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF65B741),
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 42.0,
                  vertical: 4.0,
                ),
                child: Text(
                  "প্রি-বুকিং করুন",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
