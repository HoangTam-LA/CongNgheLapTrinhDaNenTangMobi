import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:buoiseven/constants.dart';
import 'package:buoiseven/controllers/question_controller.dart';
import 'package:flutter_svg/svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(
                  context,
                ).textTheme.displaySmall?.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${qnController.correctAns * 10}/${qnController.questions.length * 10}",
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium?.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
            ],
          ),
        ],
      ),
    );
  }
}
