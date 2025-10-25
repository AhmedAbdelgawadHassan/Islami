import 'package:flutter/material.dart';
import 'package:islami/shared/customText.dart';
import 'package:islami/shared/logo_widget.dart';

class Onboarding5 extends StatelessWidget {
  const Onboarding5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body:Column(
          children: [
           LogoWidget(),  // logo 
           Spacer(),
            Center(child: Image(image: AssetImage('assets/images/onboarding/راديو.png'),width: 400,height: 415,)),
            Spacer(),
            Customtext(text:'Holy Quran Radio',fontSize: 20,),  // اذاعة القرآن الكريم
            Spacer(flex: 2,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 5),
              child: Customtext(text: 'You can listen to the Holy Quran Radio\n through the application for free and easily',fontSize: 18,maxLines: 2,)),
            Spacer()
          ],
        )
      ));
}}