import 'package:first_project/ui/screens/first_screen.dart';
import 'package:first_project/ui/screens/login_screen.dart';
import 'package:first_project/ui/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'First project',
        theme: ThemeData(
          useMaterial3: true,
          inputDecorationTheme:
            InputDecorationTheme(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)
              )
            ),
    textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.black
        ),),
        home: LoginScreen())
    );
  }
}
