import '../../constants.dart';
import '../signinOrSignUp/signin_or_signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // Thêm SingleChildScrollView
          child: Column(
            mainAxisSize: MainAxisSize.min, // Tối ưu kích thước cột
            children: [
              const SizedBox(height: 40), // Khoảng cách trên cùng
              Image.asset("assets/images/welcome_image.png"),
              const SizedBox(
                  height: 20), // Khoảng cách giữa hình ảnh và văn bản
              Text(
                "Welcome to our freedom \nmessaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10), // Khoảng cách giữa các đoạn văn
              Text(
                "Freedom talk to any person in your \nmother language.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .color!
                      .withOpacity(0.64),
                ),
              ),
              const SizedBox(height: 30), // Khoảng cách dưới
              // Nút "Skip"
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SigninOrSignupScreen(),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Tối ưu kích thước nút
                  children: [
                    Text(
                      "Skip",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .color!
                                .withOpacity(0.8),
                          ),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .color!
                          .withOpacity(0.8),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40), // Khoảng cách dưới cùng
            ],
          ),
        ),
      ),
    );
  }
}
