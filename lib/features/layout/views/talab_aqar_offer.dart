import 'package:broker/constants.dart';
import 'package:broker/features/layout/views/widgets/data_form.dart';
import 'package:broker/features/layout/views/widgets/data_form2.dart';
import 'package:broker/features/layout/views/widgets/data_form3.dart';
import 'package:broker/features/layout/views/widgets/data_form4.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

class TalabAqarOffer extends StatefulWidget {
  const TalabAqarOffer({super.key});

  @override
  State<TalabAqarOffer> createState() => _TalabAqarOfferState();
}

class _TalabAqarOfferState extends State<TalabAqarOffer> {
  int activeStep = 0;

  void nextStep() {
    if (activeStep < 3) {
      setState(() => activeStep++);
    } else {
      // Handle form submission
    }
  }

  void previousStep() {
    if (activeStep > 0) {
      setState(() => activeStep--);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screenWidgets = [
      DataForm(
        onNext: nextStep,
      ),
      DataForm2(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      DataForm3(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      DataForm4(
        onPrevious: previousStep,
        onReset: () {
          setState(() {
            activeStep = 0; // Reset to step 1
          });
        },
      ),
    ];

    return Column(
      children: [
        EasyStepper(
          lineStyle: const LineStyle(
            defaultLineColor: Colors.grey,
            lineType: LineType.normal,
          ),
          defaultStepBorderType: BorderType.normal,
          activeStep: activeStep,
          stepRadius: 20,
          borderThickness: 2,
          activeStepBackgroundColor: Colors.white,
          activeStepBorderColor: kSecondaryColor,
          activeStepTextColor: kSecondaryColor,
          unreachedStepBorderColor: kSecondaryColor,
          unreachedStepBackgroundColor: Colors.white,
          unreachedStepTextColor: kSecondaryColor,
          finishedStepBackgroundColor: const Color(0xFF332620),
          finishedStepTextColor: const Color(0xFF332620),
          showLoadingAnimation: false,
          steps: [
            EasyStep(
              customStep: Opacity(
                opacity: activeStep >= 0 ? 1 : 0.3,
                child: Text(
                  '1',
                  style: TextStyle(
                    color: activeStep == 0
                        ? kSecondaryColor
                        : Colors.white,
                  ),
                ),
              ),
              title: 'البيانات\nالشخصية',
            ),
            EasyStep(
              customStep: Opacity(
                opacity: activeStep >= 1 ? 1 : 0.3,
                child: Text(
                  '2',
                  style: TextStyle(
                    color: activeStep == 1
                        ? kSecondaryColor
                        : activeStep > 0
                        ? Colors.white
                        : kSecondaryColor,
                  ),
                ),
              ),
              title: 'بيانات\nالعقار',
            ),
            EasyStep(
              customStep: Opacity(
                opacity: activeStep >= 2 ? 1 : 0.3,
                child: Text(
                  '3',
                  style: TextStyle(
                    color: activeStep == 2
                        ? kSecondaryColor
                        : activeStep > 1
                        ? Colors.white
                        : kSecondaryColor,
                  ),
                ),
              ),
              title: 'عقد\nالملكية',
            ),
            EasyStep(
              title: 'الشروط\nوالاحكام',
              customStep: Opacity(
                opacity: activeStep >= 3 ? 1 : 0.3,
                child: Text(
                  '4',
                  style: TextStyle(
                    color: activeStep == 3
                        ? kSecondaryColor
                        : activeStep > 2
                        ? Colors.white
                        : kSecondaryColor,
                  ),
                ),
              ),
            ),
          ],
          onStepReached: (index) =>
              setState(() => activeStep = index),
        ),
        screenWidgets[activeStep],
      ],
    );
  }
}
