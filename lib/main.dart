import 'package:delivery_app/screens/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
            title: 'Delivery', debugShowCheckedModeBanner: false, home: child);
      },
      child: const TabsScreen(),
    );
  }
}
