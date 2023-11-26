import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/constants.dart';
import '../data/models/email_body.dart';

class HomeScreenController extends GetxController{
  RxInt selectedItemIndex = RxInt(-1);
  RxInt staredIem = RxInt(0);
  RxList<EmailBody> emailBody = RxList<EmailBody>();
  RxList<int> starredMail = <int>[].obs;
  List<RxBool> isStarredList = [];
  var isLoading = true.obs;
  RxString date = "".obs;




  @override
  void onInit() {
    emailBody.addAll({
      EmailBody(emailBody: happiloMailbody,
          emailId: 'happillo@happilo.com',
          subject: 'Thank you for your purchase',
          content: "Hi Sparks, we're getting your order ready to be shipped. We will notify you when it has been sent",
          dateTime: "12:34 PM"),
      EmailBody(emailBody: hopscotchMailBody,
          emailId: 'hopscotch@hopscotch.com',
          content: "We are pleased to inform you that your Hopscotch order is on its way! We have packed it with care & couriered i",
          subject: 'Order Shipped',
          dateTime: "03:45 AM"),
      EmailBody(emailBody: noiseMailBody,
          emailId: 'noise@noise.com',
          subject: 'Thank you for placing an order with us',
          content: "Please be aware that if your address lies within a designated COVID-19 containment and under lockdown zone, Noise will only be able to deliver your order as soon as government regulations allow.",
          dateTime: "8:60 PM"),
    });

    for (int i = 0; i < emailBody.length; i++) {
      isStarredList.add(false.obs);
    }

    super.onInit();

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

  bool isStarred(int index) {
    return starredMail.contains(index);
  }

  void copyToClipboard(String text, String email) {
    Clipboard.setData(ClipboardData(text: text));
    Get.snackbar("Copied", email);
  }


  void removeItem(int index) {
    final item = emailBody[index];
    emailBody.removeAt(index);
    Get.snackbar(
      "Item deleted",
      "",
      colorText: ColorManager.white,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black45,
      mainButton: TextButton(
        onPressed: () {
          emailBody.insert(index, item);
          Get.back();
        },
        child: Text("Undo", style: getRegularStyle(),),
      ),
    );
  }
  void selectItem(int index) {
    selectedItemIndex.value = index;
  }
  void starredItem(int index) {
    staredIem.value = index;
  }

}