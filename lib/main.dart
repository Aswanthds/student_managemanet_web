import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:student_management_web/screens/home_page_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.web);  From firebase_options.dart
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (p0) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Student Management',
        theme: ThemeData(
          colorScheme: const ColorScheme.light(),
          useMaterial3: true,
        ),
        home: const HomePageScreen(title: 'Student Management '),
      ),
    );
  }
}
