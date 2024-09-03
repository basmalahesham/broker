import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({
    super.key,
  });

  @override
  State<MapViewBody> createState() => _MapViewBodyState();
}

class _MapViewBodyState extends State<MapViewBody> {
  int selectedIndex = 0;
  int selectedIndex2 = 0;

  List<String> list = [
    'الكل',
    'اراضي سكنية',
    'استراحة',
    'دور',
    'سطح',
    'شقق',
    'عمارات',
    'فلل',
    'محلات تجارية',
  ];

  List<Widget> screenWidgets = [
    const AllView(),
    const AllView2(),
    const AllView3(),
    const AllView4(),
    const AllView5(),
    const AllView6(),
    const AllView7(),
    const AllView8(),
    const AllView9(),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 375.w,
                height: 150.h,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: kSecondaryColor,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            width: 280.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(6),
                              border: Border.all(
                                color: Color(0xFFD1D5D9),
                              ),
                            ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex2 = index;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                  ),
                                  child: Container(
                                    width: 91.w,
                                    height: 26.h,
                                    decoration: BoxDecoration(
                                      color: selectedIndex2 == index
                                          ? kSecondaryColor
                                          : const Color(0xFFFEFEFE),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ImageIcon(
                                          AssetImage(
                                            index == 0
                                                ? 'assets/images/material-symbols_key-vertical-outline.png'
                                                : index == 1
                                                    ? 'assets/images/lucide_door-open.png'
                                                    : 'assets/images/Group.png',
                                          ),
                                          color: selectedIndex2 == index
                                              ? Colors.white
                                              : Color(0xFF332620),
                                          size: 18,
                                        ),
                                        Text(
                                          index == 0
                                              ? 'للبيع'
                                              : index == 1
                                                  ? 'للإجار'
                                                  : 'اسبوعي/شهري',
                                          style: Styles.textStyle10.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: selectedIndex2 == index
                                                ? Colors.white
                                                : const Color(0xFF332620),
                                          ),
                                        ),
                                        SizedBox(width: 8.w,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      SizedBox(
                        height: 26.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: screenWidgets.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Container(
                                width: 104.w,
                                height: 26.h,
                                decoration: BoxDecoration(
                                  color: selectedIndex == index
                                      ? kSecondaryColor
                                      : const Color(0xFFFEFEFE),
                                  borderRadius: BorderRadius.circular(23),
                                  border: Border.all(
                                    color: selectedIndex == index
                                        ? Colors.transparent
                                        : kSecondaryColor,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    list[index],
                                    style: Styles.textStyle12.copyWith(
                                      color: selectedIndex == index
                                          ? Colors.white
                                          : kSecondaryColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              screenWidgets[selectedIndex],
            ],
          ),
        ),
      ],
    );
  }
}

class AllView extends StatelessWidget {
  const AllView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView2 extends StatelessWidget {
  const AllView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView3 extends StatelessWidget {
  const AllView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView4 extends StatelessWidget {
  const AllView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView5 extends StatelessWidget {
  const AllView5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView6 extends StatelessWidget {
  const AllView6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView7 extends StatelessWidget {
  const AllView7({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView8 extends StatelessWidget {
  const AllView8({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class AllView9 extends StatelessWidget {
  const AllView9({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}
