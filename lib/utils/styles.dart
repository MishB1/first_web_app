import 'package:first_web_app/utils/colors.dart';
import 'package:flutter/material.dart';

  ButtonStyle borderedButtonStyle =  ButtonStyle(
    elevation: const MaterialStatePropertyAll(0),
    backgroundColor: const MaterialStatePropertyAll(Colors.white),
    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(50)
    ))
  );