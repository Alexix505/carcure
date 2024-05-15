import 'notifier/splash_four_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashFourScreen extends ConsumerStatefulWidget {
  const SplashFourScreen({Key? key}) : super(key: key);

  @override
  SplashFourScreenState createState() => SplashFourScreenState();
}

class SplashFourScreenState extends ConsumerState<SplashFourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          SizedBox(
              height: 766.v,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: 763.v,
                            width: double.maxFinite,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgPolygon1,
                                  height: 230.adaptSize,
                                  width: 230.adaptSize,
                                  alignment: Alignment.topLeft,
                                  margin:
                                      EdgeInsets.only(left: 31.h, top: 163.v)),
                              Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 763.v,
                                      width: double.maxFinite,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            _buildLoremIpsumDolorSection(
                                                context),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                    height: 183.v,
                                                    child: VerticalDivider(
                                                        width: 4.h,
                                                        thickness: 4.v,
                                                        color: theme.colorScheme
                                                            .onSecondaryContainer
                                                            .withOpacity(1),
                                                        endIndent: 151.h))),
                                            _buildThirteenSection(context)
                                          ])))
                            ])))),
                CustomImageView(
                    imagePath: ImageConstant.imgImage17,
                    height: 766.v,
                    width: 375.h,
                    alignment: Alignment.center)
              ])),
        ],
      ),
    ));
  }

  /// Section Widget
  Widget _buildLoremIpsumDolorSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h, right: 26.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 255.h,
                      margin: EdgeInsets.only(right: 76.h),
                      child: Text("msg_lorem_ipsum_dolor".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerSemiBold18)),
                  SizedBox(height: 11.v),
                  Container(
                      width: 331.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: Text("msg_lorem_ipsum_dolor2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall)),
                  SizedBox(height: 13.v),
                  Container(
                      height: 8.v,
                      margin: EdgeInsets.only(left: 1.h),
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 6,
                              activeDotColor: theme.colorScheme.primary,
                              dotColor: theme.colorScheme.onPrimary,
                              dotHeight: 8.v,
                              dotWidth: 20.h)))
                ])));
  }

  /// Section Widget
  Widget _buildThirteenSection(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  CustomElevatedButton(
                      text: "lbl_sign_up".tr,
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 11.v),
                  CustomOutlinedButton(text: "lbl_login".tr),
                  SizedBox(height: 38.v)
                ]))),
      ],
    );
  }

  /// Navigates to the splashThreeScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashThreeScreen,
    );
  }
}
