import '../home_page/widgets/quickrepairlist_item_widget.dart';
import '../home_page/widgets/userprofileslider_item_widget.dart';
import '../home_page/widgets/viewlist_item_widget.dart';
import 'models/quickrepairlist_item_model.dart';
import 'models/userprofileslider_item_model.dart';
import 'models/viewlist_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserProfileSlider(context),
              SizedBox(height: 22.v),
              Consumer(
                builder: (context, ref, _) {
                  return Container(
                    height: 7.v,
                    margin: EdgeInsets.only(left: 103.h),
                    child: AnimatedSmoothIndicator(
                      activeIndex: ref.watch(homeNotifier).sliderIndex,
                      count: ref
                              .watch(homeNotifier)
                              .homeModelObj
                              ?.userprofilesliderItemList
                              .length ??
                          0,
                      axisDirection: Axis.horizontal,
                      effect: ScrollingDotsEffect(
                        spacing: 11,
                        activeDotColor: appTheme.gray100,
                        dotColor: appTheme.gray20001,
                        dotHeight: 7.v,
                        dotWidth: 25.h,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 32.v),
              _buildViewList(context),
              SizedBox(height: 27.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_27_days".tr,
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 3.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "msg_until_next_shedule".tr,
                        style: CustomTextStyles.labelLargeGray400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.v),
              _buildUserRow(context),
              SizedBox(height: 17.v),
              _buildQuickRepairList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 78.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_hello_jones".tr,
              margin: EdgeInsets.only(right: 98.h),
            ),
            SizedBox(height: 6.v),
            AppbarTitle(
              text: "msg_what_can_we_do_for".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.fromLTRB(26.h, 35.v, 2.h, 12.v),
        ),
        Container(
          height: 48.adaptSize,
          width: 48.adaptSize,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 23.v,
            right: 28.h,
          ),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              24.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 203.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                ref.watch(homeNotifier).sliderIndex = index;
              },
            ),
            itemCount: ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.userprofilesliderItemList
                    .length ??
                0,
            itemBuilder: (context, index, realIndex) {
              UserprofilesliderItemModel model = ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.userprofilesliderItemList[index] ??
                  UserprofilesliderItemModel();
              return UserprofilesliderItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildViewList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 92.v,
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 45.h,
                );
              },
              itemCount: ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.viewlistItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ViewlistItemModel model = ref
                        .watch(homeNotifier)
                        .homeModelObj
                        ?.viewlistItemList[index] ??
                    ViewlistItemModel();
                return ViewlistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 61.adaptSize,
              width: 61.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 8.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.h,
                top: 19.v,
                bottom: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_vehicle".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_lorem_ipsu".tr,
                    style: CustomTextStyles.labelLargeSemiBold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 19.v,
                bottom: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_store".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_lorem_ipsur".tr,
                    style: CustomTextStyles.labelLargeSemiBold,
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.only(left: 16.h),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray100,
                  width: 6.h,
                ),
                borderRadius: BorderRadiusStyle.roundedBorder38,
              ),
              child: Container(
                height: 77.adaptSize,
                width: 77.adaptSize,
                decoration: AppDecoration.outlineBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder38,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_15".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 71.adaptSize,
                        width: 71.adaptSize,
                        child: CircularProgressIndicator(
                          value: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuickRepairList(BuildContext context) {
    return SizedBox(
      height: 61.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(left: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 17.h,
              );
            },
            itemCount: ref
                    .watch(homeNotifier)
                    .homeModelObj
                    ?.quickrepairlistItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              QuickrepairlistItemModel model = ref
                      .watch(homeNotifier)
                      .homeModelObj
                      ?.quickrepairlistItemList[index] ??
                  QuickrepairlistItemModel();
              return QuickrepairlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
