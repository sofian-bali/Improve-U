import 'package:flutter/material.dart';

class StatisticData {
  final String statisticNumber;
  final String statisticDescription;

  StatisticData({
    required this.statisticNumber,
    required this.statisticDescription,
  });
}

class SectionStatistiqueSport extends StatelessWidget {
  final List<StatisticData> statistics;

  const SectionStatistiqueSport({
    super.key,
    required this.statistics,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text(
                  'Statistiques',
                  style: TextStyle(
                    color: Color(0xFF242D41),
                    fontSize: 22,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: statistics.map((statistic) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            color: const Color(0xFF6C83B2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            statistic.statisticNumber,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFFF2F2F3),
                              fontSize: 17,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Text(
                            statistic.statisticDescription,
                            style: const TextStyle(
                              color: Color(0xFF0B0C0F),
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 1.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
