import 'package:flutter/material.dart';
import 'package:quizapplication/features/correct_answer/views/widgets/check_answer_item_widget.dart';
import '../../../home/data/models/question_model.dart';

class CheckAnswersBody extends StatelessWidget {
  const CheckAnswersBody({super.key, required this.questions});
  final List<QuestionModel>  questions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
          ...questions.map((questionModel) =>
              CustomCheckAnswerItemWidget(
                questionModel: questionModel,
              ),
          ),


        ],
      ),
    );
  }
}