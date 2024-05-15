import 'notifier/schedule_a_maintenance_three_notifier.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleAMaintenanceThreeScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceThreeScreen({Key? key}) : super(key: key);

  @override
  ScheduleAMaintenanceThreeScreenState createState() =>
      ScheduleAMaintenanceThreeScreenState();
}

class ScheduleAMaintenanceThreeScreenState
    extends ConsumerState<ScheduleAMaintenanceThreeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          _buildGroup27(context),
                          SizedBox(height: 7.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_3_of_4_progress".tr,
                                  style: CustomTextStyles.labelLargeGray90001)),
                          SizedBox(height: 29.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_pick_up_date".tr,
                                  style: theme.textTheme.labelLarge)),
                          SizedBox(height: 8.v),
                          _buildFrame(context,
                              timeText: "lbl_15_06_24".tr,
                              clockImage: ImageConstant.imgCalendar),
                          SizedBox(height: 18.v),
                          _buildCalendar(context),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_pick_up_time_earliest".tr,
                                  style: theme.textTheme.labelLarge)),
                          SizedBox(height: 8.v),
                          _buildFrame(context,
                              timeText: "lbl_00_00_pm".tr,
                              clockImage: ImageConstant.imgClock,
                              onTapFrame: () {
                            onTapFrame(context);
                          }),
                          SizedBox(height: 20.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_pick_up_time_latest".tr,
                                  style: theme.textTheme.labelLarge)),
                          SizedBox(height: 4.v),
                          _buildFrame(context,
                              timeText: "lbl_00_00_pm".tr,
                              clockImage: ImageConstant.imgClock,
                              onTapFrame: () {
                            onTapFrame1(context);
                          }),
                          SizedBox(height: 34.v),
                          CustomElevatedButton(
                              text: "lbl_proceed".tr,
                              buttonStyle: CustomButtonStyles.fillGrayTL8)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 77.v,
        leadingWidth: 82.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCheckmark60x60,
            margin: EdgeInsets.only(left: 22.h, top: 12.v, bottom: 5.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Column(children: [
              AppbarTitle(
                  text: "lbl_date_time".tr,
                  margin: EdgeInsets.only(right: 143.h)),
              SizedBox(height: 2.v),
              AppbarSubtitle(text: "msg_lorem_ipsum_dolor5".tr)
            ])),
        styleType: Style.bgFill_2);
  }

  /// Section Widget
  Widget _buildGroup27(BuildContext context) {
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

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return SizedBox(
          height: 432.v,
          width: 325.h,
          child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.multi,
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                  selectedDayHighlightColor: Color(0XFFBEBEBE),
                  centerAlignModePicker: true,
                  firstDayOfWeek: 0,
                  controlsHeight: 39,
                  selectedDayTextStyle: TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700),
                  controlsTextStyle: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  dayTextStyle: TextStyle(
                      color: appTheme.gray400,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  disabledDayTextStyle: TextStyle(
                      color: appTheme.gray400,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400),
                  dayBorderRadius: BorderRadius.circular(5.h)),
              value: ref
                      .watch(scheduleAMaintenanceThreeNotifier)
                      .selectedDatesFromCalendar1 ??
                  [],
              onValueChanged: (dates) {
                ref
                    .watch(scheduleAMaintenanceThreeNotifier)
                    .selectedDatesFromCalendar1 = dates;
              }));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String timeText,
    required String clockImage,
    Function? onTapFrame,
  }) {
    return GestureDetector(
        onTap: () {
          onTapFrame!.call();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v),
            decoration: AppDecoration.fillGray50
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(timeText,
                      style: CustomTextStyles.bodySmallGray90001.copyWith(
                          color: appTheme.gray90001.withOpacity(0.6))),
                  CustomImageView(
                      imagePath: clockImage,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(top: 4.v, right: 13.h, bottom: 4.v))
                ])));
  }

  /// Displays a time picker dialog and updates the selected time in the
  /// [scheduleAMaintenanceThreeModelObj] object of the current [controller] if the user
  /// selects a valid time.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrame(BuildContext context) async {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: ref
            .watch(scheduleAMaintenanceThreeNotifier)
            .scheduleAMaintenanceThreeModelObj!
            .selectedTimeText!);
    if (time != null) {
      ref
          .watch(scheduleAMaintenanceThreeNotifier)
          .scheduleAMaintenanceThreeModelObj!
          .selectedTimeText = time;
      var parseDate = DateFormat.jm().parse(time.format(context));
      ref
          .watch(scheduleAMaintenanceThreeNotifier)
          .scheduleAMaintenanceThreeModelObj!
          .timeText = parseDate.format(HH_mm);
    }
  }

  /// Displays a time picker dialog and updates the selected time in the
  /// [scheduleAMaintenanceThreeModelObj] object of the current [controller] if the user
  /// selects a valid time.
  ///
  /// This function returns a `Future` that completes with `void`.
  Future<void> onTapFrame1(BuildContext context) async {
    TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: ref
            .watch(scheduleAMaintenanceThreeNotifier)
            .scheduleAMaintenanceThreeModelObj!
            .selectedTimeText1!);
    if (time != null) {
      ref
          .watch(scheduleAMaintenanceThreeNotifier)
          .scheduleAMaintenanceThreeModelObj!
          .selectedTimeText1 = time;
      var parseDate = DateFormat.jm().parse(time.format(context));
      ref
          .watch(scheduleAMaintenanceThreeNotifier)
          .scheduleAMaintenanceThreeModelObj!
          .timeText1 = parseDate.format(HH_mm);
    }
  }
}
