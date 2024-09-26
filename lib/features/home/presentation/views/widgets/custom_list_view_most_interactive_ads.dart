import 'package:broker/features/home/presentation/views/most_interactive_ad_details_view.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_most_interactive_ads_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewMostInteractiveAds extends StatelessWidget {
  const CustomListViewMostInteractiveAds({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, MostInteractiveAdDetailsView.routeName);
      },
      child: SizedBox(
        height: 284.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomListViewMostInteractiveAdsItem(position: index,),
          ),
        ),
      ),
    );
  }
}

