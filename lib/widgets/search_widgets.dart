import 'package:coffee_beans_task/core/color_manager.dart';
import 'package:coffee_beans_task/core/values_manager.dart';
import 'package:flutter/material.dart';

class GmailSearchBar extends StatelessWidget {
  const GmailSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(AppPadding.p8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              offset: const Offset(0.0, 2.0),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                // Open the menu
              },
              icon: const Icon(Icons.menu),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search mail',
                  border: InputBorder.none,
                ),
              ),
            ),
            const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                'https://picsum.photos/200/300',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
