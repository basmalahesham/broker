import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_container.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_most_interactive_ads.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostInteractiveAdDetailsView extends StatelessWidget {
  const MostInteractiveAdDetailsView({super.key});

  static const String routeName = "most_interactive_ad_details_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 7.w,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF332620),
              ),
            ),
            const Icon(
              Icons.chat,
              color: kSecondaryColor,
            ),
          ],
        ),
        title: Image.asset('assets/images/Group 3646.png'),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.favorite,
            color: Color(0xFFFFAEAF),
          ),
          SizedBox(
            width: 10.w,
          ),
          const Icon(
            Icons.share_outlined,
            color: Color(0xFF212121),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 24.0,
                horizontal: 16,
              ),
              child: Column(
                children: [
                  Image.asset('assets/images/Frame 1000003751.png'),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'شقة للبيع',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' 2,324 ريال',
                        style: Styles.textStyle24.copyWith(
                          color: const Color(0xFF332620),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '23 شارع الحج , الرحمانية , الرياض',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF332620).withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  Row(
                    children: [
                      const CustomContainer(
                        text: '3 غرف',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CustomContainer(
                        text: '2 حمام',
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CustomContainer(
                        text: '1 صاله',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: 344.w,
                    height: 359.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFAFAFAF).withOpacity(0.5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الوصف',
                            style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF332620),
                            ),
                          ),
                          Text(
                            'للبيع من المالك مباشره بدون عمولة.\nشقق تمليك في الطايف جديدة الحويه مخطط\nجوهرة الحويه مخطط جديد في سنتر الحويه شقتين في الدور الاول.\n\nتتكون من : مجلس دورة مياه رجال مقلط او غرفة طعام   صاله مطبخ غرفة عامله وغسيل غرفة نوم ماستر و حمام غرفة اطفال مدخلين رجال ونساء خزان مستقل  عداد     مستقل مصعد  على الكود السعودي صك مستقل.\nالمرافق : جامع وحديقه  قريبه من جامعة الطائف  قرببه من مول أنتر الحويه الجديد.\nرقم رخصة فال للوساطة والتسويق:1100001710',
                            style: Styles.textStyle14.copyWith(
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF332620),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: 344.w,
                    height: 85.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadiusDirectional.circular(7),
                      border: Border.all(
                        color: const Color(0xFFD3D3D3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 29,
                            child: Image.asset(
                              'assets/images/Ellipse 2.png',
                              width: 56,
                              height: 56,
                            ),
                          ),
                          SizedBox(
                            width: 16.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'أبو نواف حميد',
                                    style: Styles.textStyle15,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Image.asset(
                                      'assets/images/Checkmark [Filled].png'),
                                ],
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'وسيط عقاري',
                                        style: Styles.textStyle13.copyWith(
                                          color: const Color(0xFF332620)
                                              .withOpacity(0.7),
                                        ),
                                      ),
                                      Image.asset(
                                          'assets/images/Frame 1000003778.png'),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Container(
                                    width: 111.w,
                                    height: 28.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      border: Border.all(
                                        color: kSecondaryColor,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.chat,
                                          color: kSecondaryColor,
                                        ),
                                        Text(
                                          'تواصل مع المعلن',
                                          style: Styles.textStyle10.copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: 344.w,
                    height: 257.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadiusDirectional.circular(7),
                      border: Border.all(
                        color: const Color(0xFFD3D3D3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'التفاصيل أضافيه',
                            style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF332620),
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "• " 'عمر العقار',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '3سنوات',
                                style: Styles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "• " 'الطابق',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'الدور الاول',
                                style: Styles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "• " 'المساحه',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '160',
                                style: Styles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "• " 'تاريخ الاعلان',
                                style: Styles.textStyle14.copyWith(
                                  color:
                                      const Color(0xFF332620).withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'منذ 9 ساعات',
                                style: Styles.textStyle16
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    width: 344.w,
                    height: 171.h,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF8F8F8),
                      borderRadius: BorderRadiusDirectional.circular(10),
                      border: Border.all(
                        color: const Color(0xFFD3D3D3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'الكماليات',
                            style: Styles.textStyle18.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 91.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFF856E66),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'مدخل خاص',
                                    style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 13.w,
                              ),
                              Container(
                                width: 91.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFF856E66),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'مطبخ راكب',
                                    style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 13.w,
                              ),
                              Container(
                                width: 91.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFF856E66),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'مصعد',
                                    style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 91.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFF856E66),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'مدخل سيارة',
                                    style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 13.w,
                              ),
                              Container(
                                width: 91.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: const Color(0xFF856E66),
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'مكيفات راكبة',
                                    style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF332620),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ad ID: 195500070',
                        style: Styles.textStyle16.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text('Location', style: Styles.textStyle18),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Image.asset('assets/images/Frame.png'),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Hide this Ad',
                        style: Styles.textStyle14.copyWith(
                          color: kSecondaryColor,
                        ),
                      ),
                      const ImageIcon(
                        AssetImage('assets/images/ci_hide.png'),
                        color: kSecondaryColor,
                      ),
                      SizedBox(
                        width: 110.w,
                      ),
                      Text(
                        'Report this Ad',
                        style: Styles.textStyle14.copyWith(
                          color: kSecondaryColor,
                        ),
                      ),
                      const ImageIcon(
                        AssetImage('assets/images/ph_flag.png'),
                        color: kSecondaryColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text('الاعلانات ذات صله', style: Styles.textStyle16),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const CustomListViewMostInteractiveAds(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
