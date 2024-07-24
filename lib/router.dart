import 'package:go_router/go_router.dart';

import 'package:chatgpt_client/chat_page.dart';
import 'package:chatgpt_client/api/chat_api.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => ChatPage(chatApi:ChatApi()),
    ),
    GoRoute(
      name: 'chat',
      path: '/chat',
      builder: (context, state) => ChatPage(chatApi:ChatApi()),
    ),
  ],
);