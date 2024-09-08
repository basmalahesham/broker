import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/build_property_data_form2.dart';
import 'package:broker/features/home/presentation/views/widgets/build_property_data_form4.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:broker/features/home/presentation/views/widgets/doc_data_form.dart';
import 'package:broker/features/home/presentation/views/widgets/doc_data_form3.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TalabDocumentedView extends StatefulWidget {
  const TalabDocumentedView({super.key});

  static const String routeName = "TalabDocumentedView";

  @override
  State<TalabDocumentedView> createState() => _TalabDocumentedViewState();
}

class _TalabDocumentedViewState extends State<TalabDocumentedView> {
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
      DocDataForm(
        onNext: nextStep,
      ),
      BuildPropertyDataForm2(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      DocDataForm3(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      BuildPropertyDataForm4(
        onPrevious: previousStep,
        onReset: () {
          setState(() {
            activeStep = 0; // Reset to step 1
          });
        },
      ),
    ];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomAppBarHomeView(),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 80.h,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/Frame 1171275254.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'طلب موثق',
                      style: Styles.textStyle18.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 16,
                    ),
                    width: 450.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: const Color(0xFFAFAFAF),
                      ),
                    ),
                    child: Column(
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
                          unreachedStepBorderColor: const Color(0xFF332620),
                          unreachedStepBackgroundColor: Colors.white,
                          unreachedStepTextColor: const Color(0xFF332620),
                          finishedStepBackgroundColor: Colors.red,
                          finishedStepTextColor: kSecondaryColor,
                          showLoadingAnimation: false,
                          steps: [
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 0 ? 1 : 0.3,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: activeStep == 0
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                              title: 'تفاصيل\nالعقار',
                            ),
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 1 ? 1 : 0.3,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: activeStep == 1
                                        ? Colors.black
                                        : activeStep > 0
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              title: 'مكان\nالمقابلة',
                            ),
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 2 ? 1 : 0.3,
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: activeStep == 2
                                        ? Colors.black
                                        : activeStep > 1
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                              title: 'موعد\nالمقابلة',
                            ),
                            EasyStep(
                              title: 'ملاحظات\nالطلب',
                              customStep: Opacity(
                                opacity: activeStep >= 3 ? 1 : 0.3,
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    color: activeStep == 3
                                        ? Colors.black
                                        : activeStep > 2
                                        ? Colors.white
                                        : Colors.black,
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
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
