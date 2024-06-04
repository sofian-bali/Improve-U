import 'package:flutter/material.dart';

class SectionEvolution extends StatefulWidget {
  final String title;
  final String subtitle;
  final String month;
  final num weight;

  const SectionEvolution({
    super.key,
    required this.title,
    required this.subtitle,
    required this.month,
    required this.weight,
  });

  @override
  State<SectionEvolution> createState() => _SectionEvolutionState();
}

class _SectionEvolutionState extends State<SectionEvolution> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFFE8E9ED)),
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0xFFE5E9F2),
              blurRadius: 15,
              offset: Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle(),
            const SizedBox(height: 24),
            _buildSubtitle(),
            const SizedBox(height: 16),
            _buildProgressIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Color(0xFF242D41),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildSubtitle() {
    return Row(
      children: [
        Text(
          widget.subtitle,
          style: const TextStyle(
            color: Color(0xFF9DA0AF),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            height: 1.4,
          ),
        ),
      ],
    );
  }

  Widget _buildProgressIndicator() {
    return SizedBox(
      width: 43,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${widget.weight} kg',
            style: const TextStyle(
              color: Color(0xFFD5D6DD),
              fontSize: 12,
              fontStyle: FontStyle.italic,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: double.infinity,
            height: widget.weight.toDouble(),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF6C83B2),
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Transform.translate(
            offset: const Offset(0.0, -10.0),
            child: Transform.rotate(
              angle: -1.05,
              child: Text(
                widget.month,
                style: const TextStyle(
                  color: Color(0xFF9DA0AF),
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
