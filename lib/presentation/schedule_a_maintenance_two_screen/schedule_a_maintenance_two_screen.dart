import '../schedule_a_maintenance_two_screen/widgets/userprofile_item_widget.dart';
import 'models/userprofile_item_model.dart';
import 'notifier/schedule_a_maintenance_two_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ScheduleAMaintenanceTwoScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceTwoScreen({Key? key}) : super(key: key);

  @override
  ScheduleAMaintenanceTwoScreenState createState() =>
      ScheduleAMaintenanceTwoScreenState();
}

class ScheduleAMaintenanceTwoScreenState
    extends ConsumerState<ScheduleAMaintenanceTwoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 21.v),
                child: Column(children: [
                  _buildSeventeen(context),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_1_of_4_progress".tr,
                          style: CustomTextStyles.labelLargeGray90001)),
                  SizedBox(height: 23.v),
                  _buildUserProfile(context),
                  SizedBox(height: 59.v),
                  CustomIconButton(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPlusBlueGray900)),
                  SizedBox(height: 28.v),
                  CustomElevatedButton(
                      text: "lbl_proceed".tr,
                      buttonStyle: CustomButtonStyles.fillGray),
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
                  text: "msg_select_a_vehicle".tr,
                  margin: EdgeInsets.only(right: 118.h)),
              SizedBox(height: 2.v),
              AppbarSubtitle(text: "msg_which_of_your_vehicle".tr)
            ])));
  }

  /// Section Widget
  Widget _buildSeventeen(BuildContext context) {
    return Container(
        width: 342.h,
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            width: 85.h,
            padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 3.v),
            decoration: AppDecoration.fillGray400
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Text("lbl_25".tr, style: theme.textTheme.labelMedium)));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 16.v);
          },
          itemCount: ref
                  .watch(scheduleAMaintenanceTwoNotifier)
                  .scheduleAMaintenanceTwoModelObj
                  ?.userprofileItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            UserprofileItemModel model = ref
                    .watch(scheduleAMaintenanceTwoNotifier)
                    .scheduleAMaintenanceTwoModelObj
                    ?.userprofileItemList[index] ??
                UserprofileItemModel();
            return UserprofileItemWidget(model, onTapUserProfile: () {
              onTapUserProfile(context);
            });
          });
    });
  }

  /// Navigates to the pickUpScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.pickUpScreen,
    );
  }
}
