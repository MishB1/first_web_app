import 'package:first_web_app/utils/colors.dart';
import 'package:first_web_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
    //  mobile: (BuildContext context) =>,
      desktop: (BuildContext context) => desktopContainer1(),
     // tablet: (BuildContext context) => ,
    );
  }

  Widget desktopContainer1() {
    return Row(
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
              const SizedBox(height: 20,),
              Text('Helps you to organize your income and expenses',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 16,
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
                    fontSize: 16,
                  ),
              ),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}