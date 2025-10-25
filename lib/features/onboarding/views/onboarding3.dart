import 'package:flutter/material.dart';
import 'package:islami/shared/customText.dart';
import 'package:islami/shared/logo_widget.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(
      child:  Scaffold(
        body:Column(
          children: [
           LogoWidget(),  // logo 
           Spacer(),
            Center(child: Image(image: AssetImage('assets/images/onboarding/قرآن كريم.png'),width: 400,height: 415,)),
            Spacer(),
            Customtext(text:'Reading the Quran',fontSize: 20,),
            Spacer(flex: 2,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 5),
              child: Customtext(text: 'Read, and your Lord is the Most Generous',fontSize: 18,)),
            Spacer()
          ],
        )
      )));
  }}