import 'package:coffee_beans_task/core/asset_manager.dart';
import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/string_manager.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/constants.dart';
import '../data/models/email_body.dart';

class HomeScreenController extends GetxController{
  RxInt selectedItemIndex = RxInt(-1);
  RxInt staredIem = RxInt(0);
  RxList<EmailModel> emailBody = RxList<EmailModel>();
  RxList<int> starredMail = <int>[].obs;
  List<RxBool> isStarredList = [];
  RxBool isLoading = true.obs;
  RxString date = "".obs;
  var isBold = false.obs;




  @override
  void onInit() {
    _initializeEmails();
    _initializeStarredList();
    super.onInit();
  }


  //add data to list
  void _initializeEmails(){
    emailBody.addAll({
      EmailModel(emailBody: AssetManager.mailBodyOne,
          emailId: AppStrings.happiloEmail,
          subject: 'Thank you for your purchase',
          content: "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent",
          dateTime: "12:34 PM"),
      EmailModel(emailBody: AssetManager.mailBodyTwo,
          emailId: AppStrings.hopScotchEmail,
          content: "We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered i",
          subject: 'Order Shipped',
          dateTime: "03:45 AM"),
      EmailModel(emailBody: AssetManager.mailBodythree,
          emailId: AppStrings.nosieEmail,
          subject: 'Thank you for placing an order with us',
          content: "Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.",
          dateTime: "8:60 PM"),
    });
  }


  void _initializeStarredList(){
    for (int i = 0; i < emailBody.length; i++) {
      isStarredList.add(false.obs);
    }
  }

  void toggleBold() {
    isBold.value = !isBold.value;
  }

  void toggleStarIcon(int index) {
    if (starredMail.contains(index)) {
      starredMail.remove(index);
    } else {
      starredMail.add(index);
    }
    isStarredList[index].value = !isStarredList[index].value;
    update();
  }

  // starring messages
  bool isStarred(int index) {
    return starredMail.contains(index);
  }

  //Copy mail address to Clipboard
  void copyToClipboard(String text, String email) {
    Clipboard.setData(ClipboardData(text: text));
    Get.snackbar(AppStrings.copied, email);
  }

  //remove items from list
  void removeItem(int index) {
    final item = emailBody[index];
    emailBody.removeAt(index);
    Get.snackbar(
      AppStrings.itemDeletd,
      "",
      colorText: ColorManager.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black45,
      mainButton: TextButton(
        onPressed: () {
          // emailBody.insert(index, item);
          Get.back();
        },
        child: InkWell(
            child: Text("Undo", style: getRegularStyle(),)),
      ),
    );
  }


}