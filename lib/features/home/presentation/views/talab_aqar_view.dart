import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/build_property_data_form.dart';
import 'package:broker/features/home/presentation/views/widgets/build_property_data_form2.dart';
import 'package:broker/features/home/presentation/views/widgets/build_property_data_form3.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_app-bar_home_view.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TalabAqarView extends StatefulWidget {
  const TalabAqarView({super.key});
  static const String routeName = 'TalabAqarView';

  @override
  State<TalabAqarView> createState() => _TalabAqarViewState();
}

class _TalabAqarViewState extends State<TalabAqarView> {
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
      BuildPropertyDataForm(
        onNext: nextStep,
      ),
      BuildPropertyDataForm2(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      BuildPropertyDataForm3(
        onNext: nextStep,
        onPrevious: previousStep,
      ),
      Container(),
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
                        'assets/images/Frame 1171275252.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'طلب عقار',
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
                          activeStep: activeStep,
                          stepRadius: 20,
                          borderThickness: 2,
                          activeStepBackgroundColor: Colors.white,
                          activeStepBorderColor: kSecondaryColor,
                          activeStepTextColor: kSecondaryColor,
                          unreachedStepBorderColor: Colors.black,
                          unreachedStepBackgroundColor: Colors.white,
                          unreachedStepTextColor: kSecondaryColor,
                          finishedStepTextColor: Colors.white,
                          finishedStepBackgroundColor: Colors.red,
                          showLoadingAnimation: false,
                          steps: [
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 0 ? 1 : 0.3,
                                child: const Text('1'),
                              ),
                              customTitle: const Text(
                                'بيانات\nالعقار',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 1 ? 1 : 0.3,
                                child: const Text('2'),
                              ),
                              customTitle: const Text(
                                'مكان\nالعقار',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 2 ? 1 : 0.3,
                                child: const Text('3'),
                              ),
                              customTitle: const Text(
                                'خصائص\nالعقار',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            EasyStep(
                              customStep: Opacity(
                                opacity: activeStep >= 3 ? 1 : 0.3,
                                child: const Text('4'),
                              ),
                              customTitle: const Text(
                                'ملاحظات\nالطلب',
                                textAlign: TextAlign.center,
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
