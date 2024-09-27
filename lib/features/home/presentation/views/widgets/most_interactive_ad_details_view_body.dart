import 'package:broker/constants.dart';
import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/presentation/views/widgets/build_ad_title_and_price.dart';
import 'package:broker/features/home/presentation/views/widgets/build_additional_details_container.dart';
import 'package:broker/features/home/presentation/views/widgets/build_amenities_container.dart';
import 'package:broker/features/home/presentation/views/widgets/build_contact_info_container.dart';
import 'package:broker/features/home/presentation/views/widgets/build_description_container.dart';
import 'package:broker/features/home/presentation/views/widgets/build_feature_row.dart';
import 'package:broker/features/home/presentation/views/widgets/custom_list_view_most_interactive_ads.dart';
import 'package:flutter/material.dart';

class MostInteractiveAdDetailsViewBody extends StatelessWidget {
  const MostInteractiveAdDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
                const SizedBox(
                  height: 8,
                ),
                const BuildAdTitleAndPriceAndLocation(),
                const SizedBox(
                  height: 27,
                ),
                const BuildFeatureRow(),
                const SizedBox(
                  height: 24,
                ),
                const BuildDescriptionContainer(),
                const SizedBox(
                  height: 24,
                ),
                const BuildContactInfoContainer(),
                const SizedBox(
                  height: 24,
                ),
                const BuildAdditionalDetailsContainer(),
                const SizedBox(
                  height: 24,
                ),
                const BuildAmenitiesContainer(),
                const SizedBox(
                  height: 24,
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
                const SizedBox(
                  height: 8,
                ),
                Image.asset('assets/images/Frame.png'),
                const SizedBox(
                  height: 8,
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
                    const SizedBox(
                      width: 110,
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
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text('الاعلانات ذات صله', style: Styles.textStyle16),
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomListViewMostInteractiveAds(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



