import 'package:flutter/material.dart';

class SectionInformationExercice extends StatelessWidget {
  final String title;
  final String description;
  final List<List<String>> tableData;

  const SectionInformationExercice({
    Key? key,
    required this.title,
    required this.description,
    required this.tableData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final BuildContext scaffoldContext = context;

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 16.0),
          Table(
            border: TableBorder.all(color: Colors.white),
            children: [
              _buildTableRow(
                tableData[0],
                theme.colorScheme.onPrimaryContainer,
                false,
                theme,
                scaffoldContext,
              ),
              for (int i = 1; i < tableData.length; i++)
                _buildTableRow(
                  tableData[i],
                  theme.colorScheme.primary,
                  true,
                  theme,
                  scaffoldContext,
                ),
            ],
          ),
          const SizedBox(height: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Commentaires',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ajouter un commentaire',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableRow _buildTableRow(List<String> cells, Color backgroundColor, bool isFirstRow, ThemeData theme, BuildContext context) {
    return TableRow(
      children: cells.asMap().entries.map((entry) {
        final index = entry.key;
        final cell = entry.value;

        Color cellBackgroundColor = backgroundColor;
        if (isFirstRow && index == 0) {
          cellBackgroundColor = theme.colorScheme.onPrimaryContainer;
        }

        TextStyle textStyle = const TextStyle(
          color: Colors.white,
        );
        double fontSize = theme.textTheme.bodySmall?.fontSize ?? 16.0;
        textStyle = textStyle.copyWith(fontSize: fontSize);

        return TableCell(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              height: 70.0,
              color: cellBackgroundColor,
              child: Center(
                child: Text(
                  cell,
                  style: textStyle,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
