import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shop/user/route/route_constants.dart';
import 'package:shop/user/theme/app_theme.dart';
import 'package:shop/user/route/router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDF4z7mPwIhpE_Qu1t7xiBH9c-zdCJb3gQ",
          appId: "1:61955691971:android:a400eb183ae61f56881976",
          messagingSenderId: "61955691971",
          projectId: "baby-shop-fad7d"));
  runApp(const MaterialApp(
        debugShowCheckedModeBanner: false,
    home: MyApp()
  )
);
}
  // runApp(const MyApp());



// Thanks for using our template. You are using the free version of the template.
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop Template by The Flutter Way',
      theme: AppTheme.lightTheme(context),
      // Dark theme is inclided in the Full template
      themeMode: ThemeMode.light,
      onGenerateRoute: router.generateRoute,
      initialRoute: onbordingScreenRoute,
    );
  }
}
