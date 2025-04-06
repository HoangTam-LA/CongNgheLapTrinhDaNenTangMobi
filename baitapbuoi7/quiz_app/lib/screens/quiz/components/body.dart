import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
// ignore: unused_import
import 'package:quiz_app/models/Questions.dart'; // Vẫn có thể cần import này
import 'package:flutter_svg/flutter_svg.dart';

import 'progress_bar.dart';
import 'question_card.dart';

class Body extends StatelessWidget {
  final QuestionController controller; // Nhận controller từ constructor

  const Body({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: ProgressBar(key: UniqueKey()),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text:
                          "Question ${controller.questionNumber.value}", // Sửa chuỗi
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(color: kSecondaryColor),
                      children: [
                        TextSpan(
                          text: "/${controller.questions.length}", // Sửa chuỗi
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(color: kSecondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: controller.pageController,
                  onPageChanged: controller.updateTheQnNum,
                  itemCount: controller.questions.length,
                  itemBuilder:
                      (context, index) => QuestionCard(
                        key: UniqueKey(),
                        question: controller.questions[index],
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
