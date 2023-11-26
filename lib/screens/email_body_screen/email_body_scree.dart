import 'package:coffee_beans_task/app/controllers/home_screen_controller.dart';
import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:coffee_beans_task/core/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../core/constants.dart';
import '../../widgets/common_methods.dart';
import '../../widgets/common_widget.dart';

class EmailBodyScreen extends GetView<HomeScreenController>{
  const EmailBodyScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final emailController = Get.find<HomeScreenController>();

    //get arguments from previous screen
    Map<String,dynamic>arguments = Get.arguments;
    String email = arguments['email'];
    String emailBody = arguments['emailBody'];
    String emailSubject  = arguments['subject'];


   return  Scaffold(
     appBar: AppBar(
       actions:  const [
         Row(
           children: [
             Icon(Icons.delete,size: 20.0,),
             SizedBox(width: AppSize.s20),
             Icon(Icons.email_outlined,size: 20.0),
             SizedBox(width: AppSize.s20),
             Icon(Icons.more_vert_outlined,size: 20.0),
             SizedBox(width: AppSize.s20),
           ],
         )
       ],
     ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               getEmailHeader(controller,email,emailBody,emailSubject),
               const SizedBox(height: AppSize.s20,),
               SizedBox(
                 height: 400,
                 child:Stack(
                   children: [
                     InteractiveViewer(
                       minScale: 0.5,
                       maxScale: 2.0,
                       child: InAppWebView(
                         initialFile: emailBody == happiloMailbody
                             ? "assets/mailbody1.html"
                             : emailBody == hopscotchMailBody
                             ? "assets/mailbody2.html"
                             : "assets/mailbody3.html",
                         onLoadStart: (controller, url) {
                           //  loading state to true when the page starts loading
                         },
                         onLoadStop: (controller, url) {
                           //  loading state to false when the page has finished loading
                           emailController.isLoading(false);
                         },
                       ),
                     ),
                     // Obx widget updates the UI reactively when isLoading changes
                     Obx(() => controller.isLoading.value
                           ? const Center(
                       child: CircularProgressIndicator(),
                       )
                           : const SizedBox.shrink(),
                     ),
                   ],
                 ) ,

               ),



             ]
         ),
       ),
     ),
   );
  }

  //Email Header with profile and subject
  Widget getEmailHeader(HomeScreenController emailController,email,emailBody,subject) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( subject.toUpperCase(),style: getRegularStyle(),),
        Padding(
          padding:  const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              getProfileWithInitialLetter(text: email),
             const SizedBox(width: AppSize.s12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(splitNameFromEmail(email), style: getRegularStyle(),),
                  InkWell(
                    child: Row(
                      children: [
                        Text(
                            email,style: getRegularStyle(fontSize: 10.0, fontColor: ColorManager.darkGrey), ),
                        const Icon(Icons.expand_more)
                      ],
                    ),
                    onTap: () => emailController.copyToClipboard(email, email),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.turn_left,size: 20,),
              const SizedBox(width: AppSize.s8),
              const Icon(Icons.more_vert_outlined,size: 20,),
            ],
          ),
        ),
      ],
    );
  }


}

