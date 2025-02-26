
import 'package:flutter/material.dart';


import '../../../../utils/constants.dart';
import 'custom_searchbar.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.2,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppConstants.primaryColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
               children: [
                 Text("স্বাগতম,",style: TextStyle(fontSize: 18),),
                 Text("জোহা",style: TextStyle(fontSize: 24,color: Colors.white),),
               ],
              ),
              Image.asset("assets/images/profile.png",width: 48,height: 48,)
            ],
          ),
          Expanded(child: CustomSearchBar())
        ],

      ),
    );
  }
}


/*
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onSearchTap;
  final VoidCallback? onMenuTap;

  const CustomAppBar({
    super.key,
    this.onSearchTap,
    this.onMenuTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppConstants.primaryColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            AppConstants.appName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          const Icon(
            Icons.handshake_outlined,
            color: Colors.brown,
            size: 24,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CircleAvatar(
            backgroundImage: const AssetImage('assets/images/profile.jpg'),
            radius: 16,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: Container(
          color: Colors.grey[100],
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.padding,
            vertical: 8.0,
          ),
          child: TextField(
            onTap: onSearchTap,
            decoration: InputDecoration(
              hintText: 'অনুসন্ধান করুন',
              hintStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
              ),
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear, color: Colors.grey),
                onPressed: onMenuTap,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.0),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            readOnly: true, // Makes it tap-only for navigation
          ),
        ),
      ),
    );
  }
}*/
