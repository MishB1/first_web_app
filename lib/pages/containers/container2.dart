import 'package:first_web_app/utils/colors.dart';
import 'package:first_web_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container1State();
}

class _Container1State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => mobileContainer2(),
      desktop: (BuildContext context) => desktopContainer2(),
      tablet: (BuildContext context) => tabletContainer2() ,
    );
  }

  //=============MOBILE VIEW===========//
  Widget mobileContainer2() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(dashboard), fit: BoxFit.contain)
              ),
            ),
          ),
          Container(
           width: double.infinity,
           color: Colors.white,
           padding: EdgeInsets.symmetric(vertical: 40),
           child: Column(
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
           ),
          )
        ],
      ),
    );
  }

  //=============DESKTOP VIEW===========//
  Widget desktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
        Expanded(child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector1), fit: BoxFit.contain)
                ),
              )
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector2), fit: BoxFit.contain)
                ),
              )
            ),
            Positioned(
              right: 43,
              left: 43,
              bottom: 0, 
              child: Container(
                height: 712,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(dashboard), )
                ),
              ),
            )
          ],
        ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ]),
    );
  }

  //=============TABLET VIEW===========//
  Widget tabletContainer2() {
    return Container(
      height: 560,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary
      ),
      child: Column(
        children: [
        Expanded(child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector1), fit: BoxFit.contain)
                ),
              )
            ),
            Positioned(
              bottom: -20,
              left: -20,
              child: Container(
                height: 320,
                width: 320,
                decoration: BoxDecoration(
                  image:DecorationImage(image: AssetImage(vector2), fit: BoxFit.contain)
                ),
              )
            ),
            Positioned(
              right: 43,
              left: 43,
              bottom: 0, 
              child: Container(
                height: 380,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(dashboard), )
                ),
              ),
            )
          ],
        ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(fb),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(samsung)
            ],
          ),
        )
      ]),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 40,
      width: 160,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
      ),
    );
  }
  
}