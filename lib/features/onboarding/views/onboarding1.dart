import 'package:flutter/material.dart';
import 'package:islami/shared/customText.dart';
import 'package:islami/shared/logo_widget.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body:Column(
          children: [
           LogoWidget(),  // logo 
           Spacer(flex: 2,),
            Center(child: Image(image: AssetImage('assets/images/onboarding/نرحب بكم.png'),width: 400,height: 415,)),
            Spacer(flex: 2,),
            Customtext(text: 'Welcome To Islami App',fontSize: 24,),
            Spacer(flex: 1,),
          ],
        )
      ),
    );
  }
}