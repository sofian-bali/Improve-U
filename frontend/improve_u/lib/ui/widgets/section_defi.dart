// ignore_for_file: unused_import

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:improve_u/theme/main_theme.dart';


class SectionDefi extends StatelessWidget {
  const SectionDefi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 400,
    height: 238,
    padding: const EdgeInsets.all(16),
    decoration: ShapeDecoration(
        color: const Color(0xFFF0F5FF),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
            BoxShadow(
                color: Color(0xFFE5E9F2),
                blurRadius: 15,
                offset: Offset(0, 4),
                spreadRadius: 0,
            )
        ],
    ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            const SizedBox(
                width: double.infinity,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            'Séances du jour',
                            style: TextStyle(
                                color: Color(0xFF242D41),
                                fontSize: 22,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0,
                            ),
                        ),
                    ],
                ),
            ),
            Container(
                width: double.infinity,
                height: 165,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                    ),
                ),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(
                            width: double.infinity,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    const SizedBox(
                                        width: 210,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                        '100 points',
                                                        style: TextStyle(
                                                            color: Color(0xFF9CA3AF),
                                                            fontSize: 12,
                                                            fontStyle: FontStyle.italic,
                                                            fontFamily: 'DM Sans',
                                                            fontWeight: FontWeight.w400,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                                SizedBox(height: 4),
                                                SizedBox(
                                                    width: double.infinity,
                                                    child: Text(
                                                        'Séances Upper Body',
                                                        style: TextStyle(
                                                            color: Color(0xFF09090B),
                                                            fontSize: 22,
                                                            fontFamily: 'DM Sans',
                                                            fontWeight: FontWeight.w500,
                                                            height: 0,
                                                        ),
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                            color: const Color(0xFFF0F5FF),
                                            shape: RoundedRectangleBorder(
                                                side: const BorderSide(width: 1, color: Color(0xFFACBFE5)),
                                                borderRadius: BorderRadius.circular(16),
                                            ),
                                        ),
                                        child: const Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                                Text(
                                                    'Sport',
                                                    style: TextStyle(
                                                        color: Color(0xFF6C83B2),
                                                        fontSize: 14,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w500,
                                                        height: 0,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        const SizedBox(height: 24),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                                color: const Color(0xFF8AA8E5),
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(width: 1, color: Color(0xFF8AA8E5)),
                                    borderRadius: BorderRadius.circular(8),
                                ),
                            ),
                           /*  child: const TextButton(
                              onPressed: (){,
                              child: Text(
                                        'Faire la séance',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w500,
                                            height: 0,
                                        ),
                                    ),
                                
                            ), */
                        ),
                    ],
                ),
            ),
        ],
    ),
);
}
}
