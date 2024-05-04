import 'package:flutter/material.dart';
import 'package:quizapplication/core/utils/app_colors.dart';
import 'package:quizapplication/core/utils/app_texts.dart';
import 'package:quizapplication/features/correct_answer/views/correct_answer_screen.dart';
import '../../data/models/question_model.dart';

class CustomResultDialog extends StatelessWidget {
  const CustomResultDialog({super.key,  required this.score, required this.length, this.click, required this.questions});

  final int score;
  final List<QuestionModel> questions;
  final int length;
  final void Function()?  click ;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          IconButton(onPressed: (  ) {
            Navigator.pop(context);
          }, icon: const Icon(Icons.close)),


          Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: 32 ,
                  horizontal: 94
              ),
              decoration: BoxDecoration(
                  color: AppColors.containerGrey,
                  border: Border.all(
                      color: AppColors.primaryColor
                  )
              ),
              child: Column(
                children: [
                  const Text(AppTexts.result),
                  Text("$score/${length*10}") ,

                ],
              ),
            ),
          ),
          const SizedBox(
              height: 24
          ),
          Center(
            child: GestureDetector(
              onTap: click ,
              child: Container(
                alignment: Alignment.center ,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primaryColor)
                ),
                child: const Text(AppTexts.retest),
              ),
            ),
          ) ,
          const SizedBox(
              height: 24
          ),
          MaterialButton(
            onPressed: ( ) {

              Navigator.push(context, MaterialPageRoute(builder: (C) {
                return CorrectAnswerScreen(
                  questions: questions,
                );
              }));
            } ,
            child:    const Text("راحع اجاباتك")    ,
          )
        ],
      ),


    );
  }
}