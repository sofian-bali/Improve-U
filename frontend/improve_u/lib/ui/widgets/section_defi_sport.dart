import 'package:flutter/material.dart';

class DefiData {

  final String points;
  final String info;
  final String textButton;
  final VoidCallback? onPressed;


  const DefiData({

    required this.points,
    required this.info,
    required this.textButton,
    this.onPressed,
  });
}

class SectionDefiSport extends StatelessWidget {
  final List<DefiData> defis;
  final String titleDefi;

  const SectionDefiSport({
    super.key,
    required this.defis,
    required this.titleDefi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F5FF),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFE5E9F2),
              blurRadius: 15,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(

                titleDefi,
              
              style: const TextStyle(
                color: Color(0xFF242D41),
                fontSize: 22,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: defis.length,
              itemBuilder: (context, index) {
                final defi = defis[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${defi.points} Points',
                                  style: const TextStyle(
                                    color: Color(0xFF9CA3AF),
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  defi.info,
                                  style: const TextStyle(
                                    color: Color(0xFF09090B),
                                    fontSize: 20,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F5FF),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: const Color(0xFFACBFE5), width: 1),
                            ),
                            child: const Text(
                              'Sport',
                              style: TextStyle(
                                color: Color(0xFF6C83B2),
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                      onPressed: defi.onPressed,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
                          return Theme.of(context).colorScheme.primary; 
                        }),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                        ),
                      ),
                      child:  Text(
                        defi.textButton,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,

                        ),
                      ),
                      )
                    ],
                    
                  ),

                );

              },
            ),
          ],

        ),
      ),
    );
  }
}
