import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:flutter/material.dart';

import '../core/common_methods.dart';

Widget getProfileWithInitialLetter({text}){
  return CircleAvatar(
      radius: 30,
      backgroundColor: ColorManager.primary,
      child: Text(getEmailInitials(text??"A"), style: getRegularStyle(fontColor: ColorManager.white),));
}