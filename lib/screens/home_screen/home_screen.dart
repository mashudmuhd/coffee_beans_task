import 'package:coffee_beans_task/app/controllers/home_screen_controller.dart';
import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/style_manager.dart';
import 'package:coffee_beans_task/core/values_manager.dart';
import 'package:coffee_beans_task/routes/app_pages/app_pages.dart';
import 'package:coffee_beans_task/widgets/search_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/common_methods.dart';
import '../../widgets/common_widget.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200.9),
          child: Padding(
            padding: EdgeInsets.only(top: AppPadding.p20),
            child: GmailSearchBar(),
          ),
        ),
        body: GetBuilder<HomeScreenController>(builder: (controller) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.emailBody.length,
            itemBuilder: (context, index) {
              final email = controller.emailBody[index].emailId;
              final emailBody = controller.emailBody[index].emailBody;
              final emailSubject = controller.emailBody[index].subject;
              final content = controller.emailBody[index].content;
              final date = controller.emailBody[index].dateTime;
              final isStarred = controller.isStarred(index);

              Map<String, dynamic> arguments = {
                "email": email,
                "emailBody": emailBody,
                "subject": emailSubject,
                "content": content,
                "date": date,
              };

              final item = controller.emailBody[index];

              return Dismissible(
                key: Key(item.toString()),
                background: Container(
                  color: ColorManager.primary,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: AppPadding.p20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (direction) {
                  controller.removeItem(index);
                },
                child: ListTile(
                  leading: getProfileWithInitialLetter(text:email),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         splitNameEmail(email),
                        style: controller.selectedItemIndex.value == index
                            ? getBoldStyle()
                            : getRegularStyle(),
                      ),
                      Text(content??'', style: getBoldStyle(),maxLines: 1,),
                      Text(content??'',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: getRegularStyle(),
                      ),
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                       Text(date??""),
                      const SizedBox(
                          height: AppSize.s8), // Replace with your time logic
                      InkWell(
                        onTap: () {
                          controller.toggleStarIcon(index);
                        },
                        child: Icon(
                          isStarred ? Icons.star : Icons.star_border,
                          color: isStarred ? ColorManager.darkYellow: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Get.toNamed(Routes.EMAILBODY_SCREEN,arguments: arguments);
                  },
                ),
              );
            },
          );
        }));
  }
}
