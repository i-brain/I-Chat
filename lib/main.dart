import 'package:flutter/material.dart';
import 'package:i_chat/constants/app_colors.dart';
import 'package:i_chat/presentation/home/home_page.dart';
import 'package:i_chat/presentation/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.wpGreen,
            titleTextStyle: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          primarySwatch: Colors.green),
      home: const HomePage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
