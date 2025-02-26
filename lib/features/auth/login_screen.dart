import 'package:flutter/material.dart';
import 'package:tohri_foods/features/auth/widgets/my_button.dart';
import 'package:tohri_foods/features/auth/widgets/password_textfield.dart';
import 'package:tohri_foods/features/auth/widgets/social_button.dart';


import '../../../utils/constants.dart';
import '../home/presentation/home_screens.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => const HomeScreen(),));
    // Add login logic here
    print('Email: ${_emailController.text}');
    print('Password: ${_passwordController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.padding),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  AppConstants.appName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'আপনার অ্যাকাউন্টে লগইন করুন',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  labelText: 'Email',
                  controller: _emailController,
                  hintText: "mutsuddi005@gmail.com",
                ),
                const SizedBox(height: 16),
                CustomTextField(
                  labelText: 'Password',
                  obscureText: true,
                  controller: _passwordController,
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'লগইন করুন',
                  onPressed: _login,
                ),
                const SizedBox(height: 16),
                const Text(
                  'or sign in with',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 16),
                SocialButtons(
                  onGooglePress: () => print('Google login'),
                  onFacebookPress: () => print('Facebook login'),
                  onTwitterPress: () => print('Twitter login'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    //print('Navigate to sign up');
                    //Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => const HomeScreen(),));
                  },
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                        ),
                        TextSpan(
                          text: 'SIGN UP',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}