import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String inputLabel;
  final bool isPrivate;

  const CustomInput({
    super.key,
    required this.inputLabel,
    this.isPrivate = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.inputLabel,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(height: 6),

        /// TextField
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.background,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: TextField(
            controller: widget.isPrivate ? _controller : null,
            obscureText: widget.isPrivate,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: widget.inputLabel,
            ),
          ),
        ),
      ],
    );
  }
}
