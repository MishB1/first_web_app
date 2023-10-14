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
      mobile: (BuildContext context) => mobileContainer1(),
      desktop: (BuildContext context) => desktopContainer2(),
      tablet: (BuildContext context) => tabletContainer1() ,
    );
  }

  //=============MOBILE VIEW===========//
  Widget mobileContainer1() {
    return Column(
      children: [
        Container(
            height: w!/1.2,
            width: w!/1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(image:AssetImage(illustration1), fit: BoxFit.contain),
            ),
          ),
        const SizedBox( height: 20,),
        Text('Calculate your \nE-levy to \nSave Money',
        textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
            height: 1.2
          ),
        ),
        const SizedBox(height: 10,),
        Text('Helps you to organize \nyour income and expenses',
        textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20,),
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.primary)
            ),
            onPressed: () {}, 
            icon: const Icon(Icons.arrow_drop_down), 
            label: const Text('Try Free Demo')),
        ),
        const SizedBox(height: 20,),
        Text(' — Web, iOS and Android',
          style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 16,
        ),
        ),
        const SizedBox(height: 20,),
      ],
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
  Widget tabletContainer1() {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: w!/20, vertical: 25),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Calculate your \nE-levy to \nSave Money',
                  style: TextStyle(
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.2
                  ),
                ),
                const SizedBox(height: 10,),
                Text('Helps you to organize your income and expenses',
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(AppColors.primary)
                        ),
                        onPressed: () {}, 
                        icon: const Icon(Icons.arrow_drop_down), 
                        label: const Text('Try Free Demo')),
                    ),
                    const SizedBox(width: 20,),
                    Text(' — Web, iOS and Android',
                      style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 15,
                    ),
                ),
                  ],
                )
              ],
            )
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(image:AssetImage(illustration1), fit: BoxFit.contain),
              ),
            )
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)
      ),
    );
  }
  
}