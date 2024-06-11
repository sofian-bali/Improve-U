import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:improve_u/ui/screens/onboarding/inscription_view_nutrition.dart';
import 'package:improve_u/ui/screens/onboarding/inscription_view_training.dart';
import 'package:improve_u/ui/views/onboarding/inscription_view_info.dart';
import 'package:improve_u/ui/widgets/custom_button_big.dart';

class InscriptionScreen extends StatefulWidget {
  const InscriptionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InscriptionScreenState createState() => _InscriptionScreenState();
}

class _InscriptionScreenState extends State<InscriptionScreen> {
  int _currentStep = 0;

  void _nextStep() {
    setState(() {
      if (_currentStep < 2) {
        _currentStep++;
      } else {
        // Code pour terminer l'inscription
      }
    });
  }

  void _prevStep() {
    if (_currentStep == 0) {
      Navigator.pop(context);
    } else {
      setState(() {
        if (_currentStep > 0) {
          _currentStep--;
        }
      });
    }
  }

  Widget _buildStepContent() {
    switch (_currentStep) {
      case 0:
        return const InscriptionViewInfo();
      case 1:
        return const InscriptionViewTraining();
      case 2:
        return const InscriptionViewNutrition();
      default:
        return const Center(
          child: Text('Erreur lors de l\'inscription'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/back.png'),
          onPressed: _prevStep,
        ),
        title: SvgPicture.asset(
          'assets/logo/logo_horizontal_black.svg',
          // ignore: deprecated_member_use
          color: Theme.of(context).colorScheme.onBackground,
          height: 30,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildStepContent(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: CustomButtonBig(
                isOutline: _currentStep == 2,
                label: _currentStep == 2 ? "Terminer" : "Continuer",
                onTap: _nextStep,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
