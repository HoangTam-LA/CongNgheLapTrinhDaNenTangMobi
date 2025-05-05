import 'dart:math';

import 'package:flutter/material.dart';
import 'package:baimot/constants.dart';
import 'package:baimot/widgets/login_form.dart';
import 'package:baimot/widgets/sign_up_form.dart';
import 'package:baimot/widgets/socal_buttons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  bool _isShowSignUp = false;

  late AnimationController _animationController;
  late Animation<double> _animationTextRoutate;

  void setUpAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: defaultDuration,
    );

    _animationTextRoutate = Tween<double>(
      begin: 0,
      end: 90,
    ).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, _) {
          return Stack(
            children: [
              // lets animate the transition
              // Login
              AnimatedPositioned(
                duration: defaultDuration,
                width: size.width * 0.88, // 88%
                height: size.height,
                left: _isShowSignUp ? -size.width * 0.76 : 0,
                child: Container(color: login_bg, child: LoginForm()),
              ),

              // Sign Up
              AnimatedPositioned(
                duration: defaultDuration,
                height: size.height,
                width: size.width,
                left: _isShowSignUp ? size.width * 0.12 : size.width * 0.88,
                child: Container(color: signup_bg, child: SignUpForm()),
              ),

              // logo
              AnimatedPositioned(
                duration: defaultDuration,
                top: size.height * 0.1, // 10%
                left: 0,
                right: _isShowSignUp ? -size.width * 0.06 : size.width * 0.06,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white60,
                  child: AnimatedSwitcher(
                    duration: defaultDuration,
                    child:
                        _isShowSignUp
                            ? SvgPicture.asset(
                              "assets/animation_logo.svg",
                              color: signup_bg,
                            )
                            : SvgPicture.asset(
                              "assets/animation_logo.svg",
                              color: login_bg,
                            ),
                  ),
                ),
              ),

              AnimatedPositioned(
                duration: defaultDuration,
                width: size.width,
                bottom: size.height * 0.1,
                right: _isShowSignUp ? size.width * 0.06 : size.width * 0.06,
                child: SocalButtns(),
              ),

              // Login Text
              AnimatedPositioned(
                duration: defaultDuration,
                bottom:
                    _isShowSignUp ? size.height / 2 - 80 : size.height * 0.3,
                left: _isShowSignUp ? 0 : size.width * 0.44 - 80,
                child: AnimatedDefaultTextStyle(
                  duration: defaultDuration,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: _isShowSignUp ? 20 : 32,
                    fontWeight: FontWeight.bold,
                    color: _isShowSignUp ? Colors.white : Colors.white70,
                  ),
                  child: Transform.rotate(
                    angle: -_animationTextRoutate.value * pi / 180,
                    alignment: Alignment.topLeft,
                    child: InkWell(
                      onTap: () {
                        if (_isShowSignUp) {
                          updateView();
                        } else {
                          // Login
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: defpaultPadding * 0.75,
                        ),
                        width: 160,
                        child: Text("LOG IN  Thanh Tâm".toUpperCase()),
                      ),
                    ),
                  ),
                ),
              ),

              //Sign Up Text
              AnimatedPositioned(
                duration: defaultDuration,
                bottom:
                    !_isShowSignUp ? size.height / 2 - 80 : size.height * 0.3,
                right: _isShowSignUp ? size.width * 0.44 - 80 : 0,
                child: AnimatedDefaultTextStyle(
                  duration: defaultDuration,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: !_isShowSignUp ? 20 : 32,
                    fontWeight: FontWeight.bold,
                    color: _isShowSignUp ? Colors.white : Colors.white70,
                  ),
                  child: Transform.rotate(
                    angle: (90 - _animationTextRoutate.value) * pi / 180,
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        if (_isShowSignUp) {
                          // Sign up
                        } else {
                          updateView();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: defpaultPadding * 0.75,
                        ),
                        width: 160,
                        child: Text("Sign Up  Thanh Tâm".toUpperCase()),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
