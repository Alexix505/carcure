import 'notifier/splash_three_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class SplashThreeScreen extends ConsumerStatefulWidget {
  const SplashThreeScreen({Key? key}) : super(key: key);

  @override
  SplashThreeScreenState createState() => SplashThreeScreenState();
}

class SplashThreeScreenState extends ConsumerState<SplashThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            SizedBox(height: 29.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      width: 255.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: Text("msg_lorem_ipsum_dolor".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerSemiBold18))),
              SizedBox(height: 17.v),
              Container(
                  width: 331.h,
                  margin: EdgeInsets.only(left: 16.h, right: 26.h),
                  child: Text("msg_lorem_ipsum_dolor2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall)),
              SizedBox(height: 83.v),
              SizedBox(
                  height: 568.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle2070,
                        height: 264.v,
                        width: 174.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 74.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgPolygon1286x286,
                        height: 286.adaptSize,
                        width: 286.adaptSize,
                        alignment: Alignment.topCenter),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            height: 183.v,
                            child: VerticalDivider(
                                width: 4.h,
                                thickness: 4.v,
                                color: theme.colorScheme.onSecondaryContainer
                                    .withOpacity(1),
                                endIndent: 151.h))),
                    _buildCarOwnerButtons(context)
                  ]))
            ])))
          ])),
    ));
  }

  /// Section Widget
  Widget _buildCarOwnerButtons(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 30.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomElevatedButton(
                  text: "lbl_car_owner".tr,
                  onPressed: () {
                    onTapCarOwner(context);
                  }),
              SizedBox(height: 11.v),
              CustomOutlinedButton(text: "lbl_mechanic".tr),
              SizedBox(height: 38.v)
            ])));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapCarOwner(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpScreen,
    );
  }
}
