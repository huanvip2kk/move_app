import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/app_colors.dart';
import 'data/utils/shared_pref_manager.dart';
import 'gen/fonts.gen.dart';
import 'generated/l10n.dart';
import 'presentation/layout/layout_screen.dart';
import 'utils/route/app_routing.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPrefs.init();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: () => AdaptiveTheme(
          light: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.lightGreen,
            backgroundColor: Colors.white,
            fontFamily: FontFamily.patrickHandRegular,
          ),
          dark: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.lightGreen,
            fontFamily: FontFamily.patrickHandRegular,
          ),
          initial: AdaptiveThemeMode.dark,
          builder: (theme, darkTheme) => MaterialApp(
            theme: theme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            color: AppColors.primaryColor,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: 'Movie_app',
            initialRoute: RouteDefine.splashScreen.name,
            onGenerateRoute: AppRouting.generateRoute,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          ),
        ),
      );
}
