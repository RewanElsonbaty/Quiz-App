import 'package:flutter/material.dart';
import 'package:quizapplication/features/home/data/models/question_model.dart';
import '../../../home/views/widgets/custom_home_divide.dart';

class CustomCheckAnswerItemWidget extends StatelessWidget {
  const CustomCheckAnswerItemWidget(
      {
        super.key,
        required this.questionModel
      }
      );


  final QuestionModel  questionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("1)"),
        const SizedBox(height: 10,),
        Text(questionModel.title),
        const SizedBox(height: 10,),

        const CustomHomeDivider(),
        const SizedBox(height: 10,),
        Wrap(
          children: [

            ...questionModel.answers.map((answer) =>             SizedBox(
                width: MediaQuery.of(context).size.width/2   - 60,
                child: Text(answer,
                  style: TextStyle (
                      color:


                      questionModel.correctAnswer == answer ? Colors.green:

                      questionModel.correctAnswer != questionModel.selectedAnswer &&
                          questionModel.selectedAnswer == answer?

                      Colors.red:

                      Colors.black
                  ),
                )))

          ],
        ) ,
        const SizedBox(height: 10,),

        const CustomHomeDivider(),
      ],
    );
  }
}