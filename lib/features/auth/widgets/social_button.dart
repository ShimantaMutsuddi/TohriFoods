
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  final VoidCallback onGooglePress;
  final VoidCallback onFacebookPress;
  final VoidCallback onTwitterPress;

  const SocialButtons({
    super.key,
    required this.onGooglePress,
    required this.onFacebookPress,
    required this.onTwitterPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: const Color(0xFFF5F5FF), // Light purple background
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _SocialButton(
            icon: Icons.g_mobiledata,
            color: Colors.red,
            onPressed: onGooglePress,
          ),
          const SizedBox(width: 16),
          _SocialButton(
            icon: Icons.facebook,
            color: Colors.blue,
            onPressed: onFacebookPress,
          ),
          const SizedBox(width: 16),
          _SocialButton(
            icon: Icons.facebook,
            color: Colors.lightBlue,
            onPressed: onTwitterPress,
          ),
        ],
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: IconButton(
        icon: Icon(icon, color: color, size: 24),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
      ),
    );
  }
}

/*
class SocialButtons extends StatelessWidget {
  final VoidCallback onGooglePress;
  final VoidCallback onFacebookPress;
  final VoidCallback onTwitterPress;

  const SocialButtons({
    super.key,
    required this.onGooglePress,
    required this.onFacebookPress,
    required this.onTwitterPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: ,
          child: IconButton(
            icon: const Icon(Icons.g_mobiledata),
            onPressed: onGooglePress,
            color: Colors.red,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.facebook),
          onPressed: onFacebookPress,
          color: Colors.blue,
        ),
        IconButton(
          icon: const Icon(Icons.facebook),
          onPressed: onTwitterPress,
          color: Colors.lightBlue,
        ),
      ],
    );
  }
}*/
