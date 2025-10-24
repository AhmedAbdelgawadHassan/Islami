import 'package:flutter/material.dart';
import 'package:islami/shared/customText.dart';
import 'package:islami/shared/logo_widget.dart';

class Onboarding4 extends StatelessWidget {
  const Onboarding4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        body:Column(
          children: [
           LogoWidget(),  // logo 
           Spacer(),
            Center(child: Image(image: AssetImage('assets/images/onboarding/سبحة.png'),width: 400,height: 415,)),
            Spacer(),
            Customtext(text:'Bearish',fontSize: 24,),//سبحة
            Spacer(flex: 2,),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 5),
              child: Customtext(text: 'Praise the name of your Lord, the Most \nHigh',fontSize: 20,maxLines: 2,)),  // سبح اسم ربك الأعلي 
            Spacer()
          ],
        )
      ));
  }
}