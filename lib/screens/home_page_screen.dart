import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:student_management_web/screens/mobile/homepage.dart';
import 'package:student_management_web/screens/web/home_page_screenweb.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key, required this.title});

  final String title;

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        desktop: (p0) => const HomePageScreenWeb(title: 'StudentManagement'),
        mobile: (p0) =>
            const HomePageScreenMobile(title: 'StudentManagement App'));
  }
// /StudentCardMobile
}
