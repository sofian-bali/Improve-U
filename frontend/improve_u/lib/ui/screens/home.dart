// ignore_for_file: deprecated_member_use, unused_import
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:improve_u/router.dart';
import 'package:improve_u/main.dart';
import 'package:improve_u/ui/widgets/custom_app_bar.dart';
import 'package:improve_u/ui/widgets/section_defi.dart';
import 'package:improve_u/ui/widgets/custom_bottom_app_bar.dart';
import 'package:improve_u/theme/main_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(title: 'Improve-U'),
        body: SectionDefi(),
        bottomNavigationBar: CustomBottomAppBar());
  }
}
