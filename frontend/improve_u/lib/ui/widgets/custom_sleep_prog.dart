import 'package:flutter/material.dart';

class CustomSleepProg extends StatefulWidget {
  const CustomSleepProg({super.key});

  @override
  State<CustomSleepProg> createState() => _CustomSleepProgState();
}

class _CustomSleepProgState extends State<CustomSleepProg> {
  String? _selectedValueSleep = '23h00';
  String? _selectedValueWake = '7h30';

  void _onDropdownSleepChanged(String? newValue) {
    setState(() {
      _selectedValueSleep = newValue;
    });
  }

  void _onDropdownWakeChanged(String? newValue) {
    setState(() {
      _selectedValueWake = newValue;
    });
  }

  Duration _calculateDuration(String sleepTime, String wakeTime) {
    final sleepTimeParts = sleepTime.split('h').map(int.parse).toList();
    final wakeTimeParts = wakeTime.split('h').map(int.parse).toList();

    final sleep = TimeOfDay(hour: sleepTimeParts[0], minute: sleepTimeParts[1]);
    final wake = TimeOfDay(hour: wakeTimeParts[0], minute: wakeTimeParts[1]);

    // Créer les DateTime pour le coucher et le réveil
    final now = DateTime.now();
    final sleepDateTime =
        DateTime(now.year, now.month, now.day, sleep.hour, sleep.minute);
    final midnightDateTime = DateTime(
        now.year, now.month, now.day + 1); // Minuit (00:00) du jour suivant
    final wakeDateTime =
        DateTime(now.year, now.month, now.day, wake.hour, wake.minute);

    // Si l'heure de réveil est avant minuit, ajouter un jour
    if (wakeDateTime.isBefore(sleepDateTime)) {
      wakeDateTime.add(const Duration(days: 1));
    }

    // Calculer la durée entre l'heure de coucher et minuit
    final durationToMidnight = midnightDateTime.difference(sleepDateTime);

    // Ajouter la durée jusqu'à minuit à l'heure de réveil
    final totalDuration =
        durationToMidnight + Duration(hours: wake.hour, minutes: wake.minute);

    return totalDuration;
  }

  @override
  Widget build(BuildContext context) {
    final duration =
        _calculateDuration(_selectedValueSleep!, _selectedValueWake!);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Coucher
        Column(
          children: [
            /// Titre
            Text(
              'Coucher',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),

            const SizedBox(
              height: 6,
            ),

            DropdownButton<String>(
              value: _selectedValueSleep,
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '22h00',
                  child: Text('22h00'),
                ),
                DropdownMenuItem<String>(
                  value: '22h30',
                  child: Text('22h30'),
                ),
                DropdownMenuItem<String>(
                  value: '23h00',
                  child: Text('23h00'),
                ),
                DropdownMenuItem<String>(
                  value: '23h30',
                  child: Text('23h30'),
                ),
                DropdownMenuItem<String>(
                  value: '00h00',
                  child: Text('00h00'),
                ),
              ],
              onChanged: _onDropdownSleepChanged,
            )
          ],
        ),

        /// Réveil
        Column(
          children: [
            /// Titre
            Text(
              'Réveil',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),

            const SizedBox(
              height: 6,
            ),

            DropdownButton<String>(
              value: _selectedValueWake,
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: '7h00',
                  child: Text('7h00'),
                ),
                DropdownMenuItem<String>(
                  value: '7h30',
                  child: Text('7h30'),
                ),
                DropdownMenuItem<String>(
                  value: '8h00',
                  child: Text('8h00'),
                ),
                DropdownMenuItem<String>(
                  value: '8h30',
                  child: Text('8h30'),
                ),
                DropdownMenuItem<String>(
                  value: '9h00',
                  child: Text('9h00'),
                ),
              ],
              onChanged: _onDropdownWakeChanged,
            )
          ],
        ),

        /// Durée
        Column(
          children: [
            /// Titre
            Text(
              'Durée',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),

            const SizedBox(
              height: 6,
            ),

            /// Calcul de la durée
            Container(
              height: 50,
              alignment: AlignmentDirectional.center,
              child: Text(
                '${duration.inHours}h${duration.inMinutes.remainder(60).toString().padLeft(2, '0')}',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
