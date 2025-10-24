import 'package:flutter/material.dart';
import 'package:islami/shared/customText.dart';
import 'package:islami/shared/logo_widget.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body:Column(
          children: [
           LogoWidget(),  // logo 
           Spacer(),
            Center(child: Image(image: AssetImage('assets/images/onboarding/مسجد.png'),width: 400,height: 415,)),
            Spacer(),
            Customtext(text: 'Welcome To Islami',fontSize: 24,),
            Spacer(flex: 2,),
            Customtext(text: 'We Are Very Excited To Have You In Our \nCommunity',maxLines: 2,fontSize: 20,),
            Spacer()
          ],
        )
      ));
    
  }
}