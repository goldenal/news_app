import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapp/view/OnboardingScreen/OnboardingScreen.dart';

void main() {
  configLoading();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return
          MaterialApp(
            debugShowCheckedModeBanner: false,
            builder: EasyLoading.init(),
            title: 'Flutter Demo',
            theme: ThemeData(
              pageTransitionsTheme: PageTransitionsTheme(builders: {
                TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                TargetPlatform.android: CupertinoPageTransitionsBuilder(),
              }),
              fontFamily: 'Poppins',
              primarySwatch: Colors.purple,
            ),
            home: child,
          );
      },

      child: OnboardingScreen(),
    );

  }

}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 4000)
    ..indicatorType = EasyLoadingIndicatorType.ripple
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45
    ..radius = 10
    ..progressColor = Colors.pink.shade500
    ..backgroundColor = Colors.transparent
    ..indicatorColor = Colors.pink.shade500
    ..textColor = Colors.pink.shade500
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;

}
