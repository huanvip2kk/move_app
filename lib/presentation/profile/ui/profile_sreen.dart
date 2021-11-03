import 'package:flutter/material.dart';
import '../../../config/app_colors.dart';
import '../../../config/app_text_style.dart';
import '../../../generated/l10n.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        elevation: 0,
        title: Text(
          S.current.profile,
          style: AppTextStyle.fontSize24.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
        SizedBox(
        height: 115,
        width: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundColor: AppColors.dangerColor,
            ),
            Positioned(
              right: -16,
              bottom: 0,
              child: SizedBox(
                height: 46,
                width: 46,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      side: const BorderSide(color: Colors.white),
                    ),
                    primary: Colors.white,
                    backgroundColor: const Color(0xFFF5F6F9),
                  ),
                  onPressed: () {},
                  child: const Icon(Icons.camera,),
                ),
              ),
            )
          ],
        ),
      )
        ],
      ),
    );
  }
}
