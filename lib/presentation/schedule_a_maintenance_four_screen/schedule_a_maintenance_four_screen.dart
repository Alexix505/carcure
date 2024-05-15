import 'notifier/schedule_a_maintenance_four_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleAMaintenanceFourScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceFourScreen({Key? key}) : super(key: key);

  @override
  ScheduleAMaintenanceFourScreenState createState() =>
      ScheduleAMaintenanceFourScreenState();
}

class ScheduleAMaintenanceFourScreenState
    extends ConsumerState<ScheduleAMaintenanceFourScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildTwentyEight(context),
                      SizedBox(height: 7.v),
                      Text("lbl_3_of_4_progress".tr,
                          style: CustomTextStyles.labelLargeGray90001),
                      SizedBox(height: 29.v),
                      Text("lbl_pick_up_date".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 8.v),
                      _buildTextField(context,
                          timeText: "lbl_15_06_24".tr,
                          clockImage: ImageConstant.imgCalendar),
                      SizedBox(height: 25.v),
                      Text("msg_pick_up_time_earliest".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 8.v),
                      _buildTextField(context,
                          timeText: "lbl_00_00_pm".tr,
                          clockImage: ImageConstant.imgClock,
                          onTapTextField: () {
                        onTapTextField(context);
                      }),
                      SizedBox(height: 25.v),
                      Text("msg_pick_up_time_latest".tr,
                          style: theme.textTheme.labelLarge),
                      SizedBox(height: 8.v),
                      Consumer(builder: (context, ref, _) {
                        return CustomTextFormField(
                            controller: ref
                                .watch(scheduleAMaintenanceFourNotifier)
                                .timeController,
                            hintText: "lbl_00_00_pm".tr,
                            hintStyle: CustomTextStyles.bodySmallGray90001,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 16.v, 29.h, 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgClock,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 56.v),
                            contentPadding: EdgeInsets.only(
                                left: 16.h, top: 19.v, bottom: 19.v),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray50);
                      }),
                      Spacer(),
                      SizedBox(height: 77.v),
                      CustomElevatedButton(
                          text: "lbl_proceed".tr,
                          buttonStyle: CustomButtonStyles.fillGray)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 74.v,
        leadingWidth: 82.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCheckmark60x60,
            margin: EdgeInsets.only(left: 22.h, top: 1.v, bottom: 2.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Column(children: [
              AppbarTitle(
                  text: "lbl_date_time".tr,
                  margin: EdgeInsets.only(right: 143.h)),
              SizedBox(height: 2.v),
              AppbarSubtitle(text: "msg_lorem_ipsum_dolor5".tr)
            ])));
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Container(
        width: 342.h,
        decoration: AppDecoration.fillGray200
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            width: 265.h,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 3.v),
            decoration: AppDecoration.fillGray400
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Text("lbl_75".tr, style: theme.textTheme.labelMedium)));
  }

  /// Common widget
  Widget _buildTextField(
    BuildContext context, {
    required String timeText,
    required String clockImage,
    Function? onTapTextField,
  }) {
    return GestureDetector(
        onTap: () {
          onTapTextField!.call();
        },
        child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillGray50
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                      child: Text(timeText,
                          style: CustomTextStyles.bodySmallGray90001.copyWith(
                              color: appTheme.gray90001.withOpacity(0.6)))),
                  CustomImageView(
                      imagePath: clockImage,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(right: 13.h))
                ])));
  }

  /// Displays a time picker dialog and updates the selected time in the
  /// [scheduleAMaintenanceFourModelObj] object of the current [controller] if the user
  /// selects a valid time.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapTextField(BuildContext context) async {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: ref
            .watch(scheduleAMaintenanceFourNotifier)
            .scheduleAMaintenanceFourModelObj!
            .selectedTimeText!);
    if (time != null) {
      ref
          .watch(scheduleAMaintenanceFourNotifier)
          .scheduleAMaintenanceFourModelObj!
          .selectedTimeText = time;
      var parseDate = DateFormat.jm().parse(time.format(context));
      ref
          .watch(scheduleAMaintenanceFourNotifier)
          .scheduleAMaintenanceFourModelObj!
          .timeText = parseDate.format(HH_mm);
    }
  }
}
