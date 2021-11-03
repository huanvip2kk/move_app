import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../config/app_text_style.dart';

import '../../../data/utils/shared_pref_manager.dart';
import '../../../gen/assets.gen.dart';
import '../../../generated/l10n.dart';
import '../../../utils/route/app_routing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> changeScreen() async {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(
        context,
        RouteDefine.homeScreen.name,
      ),
    );
  }

  final String vi = 'Tiếng Việt';
  final String en = 'English';

  initLang() {
    if (sharedPrefs.lang == vi) {
      S.load(
        const Locale('vi', 'VN'),
      );
    } else if (sharedPrefs.lang == en) {
      S.load(
        const Locale('en', 'EN'),
      );
    } else if (sharedPrefs.lang == null) {
      S.load(
        const Locale('vi', 'VN'),
      );
      sharedPrefs.setStringToSF(lang: vi);
    }
  }

  initLight() {
    if (sharedPrefs.isLight == null) {
      sharedPrefs.setBoolToSF(
        isLight: true,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
    initLang();
    initLight();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SvgPicture.asset(
                Assets.svgImages.movie,
              ),
              Text(
                'Movie App',
                style: AppTextStyle.fontSize40.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
