import 'notifier/schedule_a_maintenance_one_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ScheduleAMaintenanceOneScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceOneScreen({Key? key}) : super(key: key);

  @override
  ScheduleAMaintenanceOneScreenState createState() =>
      ScheduleAMaintenanceOneScreenState();
}

class ScheduleAMaintenanceOneScreenState
    extends ConsumerState<ScheduleAMaintenanceOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 33.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGalleryGray400,
                      height: 262.adaptSize,
                      width: 262.adaptSize),
                  SizedBox(height: 13.v),
                  _buildFrame(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 82.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCheckmark60x60,
            margin: EdgeInsets.only(left: 22.h, top: 1.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Column(children: [
              AppbarTitle(
                  text: "lbl_add_a_vehicle".tr,
                  margin: EdgeInsets.only(right: 133.h)),
              SizedBox(height: 2.v),
              AppbarSubtitle(text: "msg_you_currently_do".tr)
            ])));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFrame(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 13.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPlus,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 22.v, bottom: 19.v)),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 21.h, top: 7.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_add_a_new_vechile".tr,
                                style: theme.textTheme.labelLarge),
                            SizedBox(height: 4.v),
                            SizedBox(
                                width: 242.h,
                                child: Text("msg_lorem_ipsum_dolor5".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodySmall))
                          ])))
            ])));
  }

  /// Navigates to the scheduleAMaintenanceTwoScreen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.scheduleAMaintenanceTwoScreen,
    );
  }
}
