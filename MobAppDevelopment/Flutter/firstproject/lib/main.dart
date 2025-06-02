import 'package:device_preview/device_preview.dart';
import 'package:firstproject/ApiProduct.dart';
import 'package:firstproject/darazScreen.dart';
import 'package:firstproject/dynamicList.dart';
import 'package:firstproject/product.dart';
import 'package:firstproject/signUp.dart';
import 'package:firstproject/splashScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/signUp': (context) => SignUp(),
        '/product': (context) => Product(),
        '/dynamicList': (context) => DynamicList(),
        '/darazScreen': (context) => DarazScreen(),
        '/apiProduct': (context) => ApiProduct(),
      },
    );
  }
}