import 'package:flutter/material.dart';

class BouttonSeances extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;

  const BouttonSeances({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<BouttonSeances> createState() => _BouttonSeancesState();
}

class _BouttonSeancesState extends State<BouttonSeances> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.background,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
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