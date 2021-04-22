import 'package:flutter/material.dart';

import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  const QuizWidget({
    Key? key,
    required this.question,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 54,
          ),
          Text(question.title, style: AppTextStyles.heading),
          SizedBox(
            height: 24,
          ),
          ...question.answers.map(
            (e) => AwnserWidget(
              title: e.title,
              isRight: e.isRight,
            ),
          ).toList()
        ],
      ),
    );
  }
}
