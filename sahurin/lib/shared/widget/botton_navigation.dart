import 'package:flutter/material.dart';
import 'package:sahurin/shared/utils/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem(
      {super.key, required this.imageUrl, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(100),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
