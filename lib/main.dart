import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'inventory_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventory Nexus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xFF6C5CE7),
        colorScheme: ColorScheme.light(
          primary: const Color(0xFF6C5CE7),
          secondary: const Color(0xFF00CEFF),
          surface: Colors.white,
          background: Colors.grey[50]!,
        ),
        scaffoldBackgroundColor: Colors.grey[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 8,
          shadowColor: Colors.black.withOpacity(0.1),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
            color: Colors.black.withOpacity(0.9),
          ),
          iconTheme: IconThemeData(
            color: const Color(0xFF00CEFF),
            size: 28,
          ),
          actionsIconTheme: IconThemeData(
            color: const Color(0xFF00CEFF),
            size: 26,
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          elevation: 4,
          margin: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: const Color(0xFF6C5CE7),
          foregroundColor: Colors.white,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black.withOpacity(0.9),
            letterSpacing: 1.1,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.8),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          hintStyle: TextStyle(
            color: Colors.black.withOpacity(0.4),
          ),
        ),
      ),
      home: InventoryHomePage(),
    );
  }
}
