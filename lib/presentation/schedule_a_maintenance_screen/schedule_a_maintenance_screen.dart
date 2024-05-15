import '../schedule_a_maintenance_screen/widgets/fortytwo_item_widget.dart';
import 'models/fortytwo_item_model.dart';
import 'notifier/schedule_a_maintenance_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class ScheduleAMaintenanceScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleAMaintenanceScreenState createState() =>
      ScheduleAMaintenanceScreenState();
}

class ScheduleAMaintenanceScreenState
    extends ConsumerState<ScheduleAMaintenanceScreen> {
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
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildThirtyFive(context),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_4_of_4_progress".tr,
                    style: CustomTextStyles.labelLargeGray90001,
                  ),
                  SizedBox(height: 28.v),
                  _buildFortyTwo(context),
                  SizedBox(height: 26.v),
                  _buildScheduleAMaintenance(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCheckmark60x60,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 12.v,
          bottom: 5.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "msg_workshop_near_you".tr,
              margin: EdgeInsets.only(right: 76.h),
            ),
            AppbarSubtitle(
              text: "msg_lorem_ipsum_dolor5".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Container(
      width: 342.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillGray400.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Text(
        "lbl_100".tr,
        style: theme.textTheme.labelMedium,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return GroupedListView<FortytwoItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: ref
                  .watch(scheduleAMaintenanceNotifier)
                  .scheduleAMaintenanceModelObj
                  ?.fortytwoItemList ??
              [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 26.v,
                bottom: 21.v,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      value,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ref
                        .watch(scheduleAMaintenanceNotifier)
                        .scheduleAMaintenanceModelObj
                        ?.favorite,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 226.h),
                  ),
                ],
              ),
            );
          },
          itemBuilder: (context, model) {
            return FortytwoItemWidget(
              model,
            );
          },
          separator: SizedBox(
            height: 24.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildScheduleAMaintenance(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.blueGray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 126.v,
        width: 342.h,
        decoration: AppDecoration.wireframe.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle4,
              height: 126.v,
              width: 109.h,
              alignment: Alignment.centerLeft,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 18.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 51.h,
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          decoration: AppDecoration.fillGray30054.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            "lbl_open".tr,
                            style: CustomTextStyles.bodySmall10,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgUser,
                          height: 37.adaptSize,
                          width: 37.adaptSize,
                          margin: EdgeInsets.only(left: 5.h),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      top: 6.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 207.h,
                          margin: EdgeInsets.only(right: 5.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_lorem_ipsur".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFavoriteBlueGray900,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(bottom: 5.v),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 3.v),
                        SizedBox(
                          width: 190.h,
                          child: Text(
                            "msg_lorem_ipsum_dolor6".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 3.v),
                        SizedBox(
                          width: 212.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                              Text(
                                "lbl_2".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              Text(
                                "lbl_7km".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                              Container(
                                height: 3.adaptSize,
                                width: 3.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 7.v),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(
                                    1.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "msg_10_00_am_10_00pm2".tr,
                                        style:
                                            CustomTextStyles.bodySmallff262424,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
