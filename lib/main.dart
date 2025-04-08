import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/theme/theme.dart';
import 'firebase_options.dart';
import 'utils/global_function.dart';
import 'utils/notifaction_handler.dart';
import 'views/splash_screen.dart';

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  await setupFlutterNotifications();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  firebaseMessagingForgroundHandler();
  print('FCM TOKEN: ${await FirebaseMessaging.instance.getToken()}');
  
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.pink, // status bar color
  ));
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
        builder: (context, child) {
          return MaterialApp(
            navigatorKey: ApGlobalFunctions.navigatorKey,
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
        });
  }
}
