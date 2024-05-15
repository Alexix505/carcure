import 'notifier/splash_one_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashOneScreen extends ConsumerStatefulWidget {
  const SplashOneScreen({Key? key}) : super(key: key);

  @override
  SplashOneScreenState createState() => SplashOneScreenState();
}

class SplashOneScreenState extends ConsumerState<SplashOneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 29.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 255.h,
                        margin: EdgeInsets.only(left: 16.h),
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .titleMediumOnPrimaryContainerSemiBold18)),
                    SizedBox(height: 11.v),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: 331.h,
                            margin: EdgeInsets.only(left: 17.h, right: 26.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall))),
                    SizedBox(height: 13.v),
                    Center(
                      child: Container(
                          height: 8.v,
                          margin: EdgeInsets.only(left: 17.h),
                          child: AnimatedSmoothIndicator(
                              activeIndex: 1,
                              count: 3,
                              effect: ScrollingDotsEffect(
                                  spacing: 6,
                                  activeDotColor: theme.colorScheme.primary,
                                  dotColor: theme.colorScheme.onPrimary,
                                  dotHeight: 8.v,
                                  dotWidth: 20.h))),
                    ),
                    SizedBox(height: 36.v),
                    SizedBox(
                        height: 462.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgPolygon1,
                              height: 230.adaptSize,
                              width: 230.adaptSize,
                              alignment: Alignment.topCenter),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage16432x375,
                              height: 432.v,
                              width: 375.h,
                              alignment: Alignment.topCenter),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: 45.v,
                                  child: VerticalDivider(
                                      width: 4.h,
                                      thickness: 4.v,
                                      color: theme
                                          .colorScheme.onSecondaryContainer
                                          .withOpacity(1),
                                      endIndent: 13.h))),
                          CustomElevatedButton(
                              width: 342.h,
                              text: "lbl_next".tr,
                              onPressed: () {
                                onTapNext(context);
                              },
                              alignment: Alignment.bottomCenter),
                        ])),
                    SizedBox(height: 11.v),
                    CustomOutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/splash_three_screen');
                        },
                        text: "lbl_skip".tr,
                        margin: EdgeInsets.only(left: 17.h, right: 16.h),
                        alignment: Alignment.center),
                    SizedBox(height: 5.v)
                  ])),
        ],
      ),
    ));
  }

  /// Navigates to the splashFourScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashFourScreen,
    );
  }
}
