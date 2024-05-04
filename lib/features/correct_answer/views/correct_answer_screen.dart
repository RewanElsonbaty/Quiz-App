import 'package:flutter/material.dart';
import 'package:quizapplication/core/utils/app_texts.dart';
import 'package:quizapplication/features/correct_answer/views/widgets/check_answers_body.dart';
import '../../../core/widgets/app_bar_widget.dart';
import '../../home/data/models/question_model.dart';

class CorrectAnswerScreen extends StatelessWidget {
  const CorrectAnswerScreen({super.key, required this.questions});

  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    print(questions[0].title.toString());
    return Scaffold(
      appBar:AppBar(
        toolbarHeight:100 ,
        flexibleSpace:const CustomAppBar(
          name: AppTexts.checkAnswers,

        ) ,
      ) ,
      body: CheckAnswersBody(
        questions: questions,
      ),
    );
  }
}