import 'package:flutter/material.dart';
import 'package:i_chat/constants/routes.dart';
import 'package:i_chat/presentation/chat/chat_page.dart';
import 'package:i_chat/presentation/home/home_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const ChatPage(),
        );
      default:
        throw UnimplementedError('No defined route: ${settings.name}');
    }
  }
}
