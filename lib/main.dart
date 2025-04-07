import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/theme.dart';
import 'utils/global_function.dart';
import 'views/splash_screen.dart';

void main() {
    ApGlobalFunctions.changeStatusBarColor(
      color: Colors.white, 
      iconBrightness: Brightness.dark,
    );
  //  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   systemNavigationBarColor: Colors.blue, // navigation bar color
  //   statusBarColor: Colors.pink, // status bar color
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          supportedLocales: [
            const Locale('en', 'US'),
            const Locale('bn', 'BD'),
          ],
          localizationsDelegates: [
            AppLocalizations.delegate, // 👈 your generated delegate
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: const Locale('en', 'US'),
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          home: SplashScreen(),
          builder: EasyLoading.init(),
          
        );
      }
    );
  }
}
