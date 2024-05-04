
import 'package:flutter/material.dart';
import 'package:quizapplication/core/utils/app_texts.dart';
import 'package:quizapplication/features/home/views/widgets/custom_home_body.dart';
import '../../../core/widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Map<key   ,  value>
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(

            toolbarHeight:100 ,
            flexibleSpace:const CustomAppBar(
              name: AppTexts.appName,
            ) ,
          ),
          body: const CustomHomeBody()
      ),
    );
  }
}