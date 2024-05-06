import 'package:flutter/material.dart';


class BouttonSeances extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;

  const BouttonSeances({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  State<BouttonSeances> createState() => _BouttonSeancesState();
}

class _BouttonSeancesState extends State<BouttonSeances> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          return Theme.of(context).colorScheme.primary; 
        }),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,



        ),
      ),
    );
  }
}