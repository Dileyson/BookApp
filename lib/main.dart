import 'package:flutter/material.dart';
import 'package:myapp/presentation/auth/login_screen.dart';
import 'package:myapp/presentation/auth/registration_screen.dart';
import 'package:myapp/presentation/library_user/book_search_screen.dart';
import 'package:myapp/presentation/library_user/library_user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 136, 32, 154),
      ),
      initialRoute: '/', // Set the initial route to the login screen
      routes: {
        '/': (context) =>
            const LoginScreen(), // Login screen as the starting point
        '/library': (context) => const LibraryUserScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/search': (context) => const BookSearchScreen(),
      },
    );
  }
}
