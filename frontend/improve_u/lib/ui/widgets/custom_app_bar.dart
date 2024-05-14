import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: SvgPicture.asset(
          'assets/logo/logo_horizontal_black.svg',
          height: 16,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
