import 'package:chat_app/pages/chat_view.dart';
import 'package:chat_app/pages/login_view.dart';
import 'package:chat_app/pages/register_view.dart';
import 'package:chat_app/pages/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'helper/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NullTalk',
      debugShowCheckedModeBanner: false,
      theme: NullTalkTheme.darkTheme,
      routes: {
        'LoginView': (context) => LoginView(),
        'RegisterView': (context) => RegisterView(),
        'ChatView': (context) => ChatView(),
        'SplashScreen': (context) => SplashScreen(),
      },
      initialRoute: 'SplashScreen',
    );
  }
}
