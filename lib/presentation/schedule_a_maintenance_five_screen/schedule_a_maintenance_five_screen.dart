import 'notifier/schedule_a_maintenance_five_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_icon_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ScheduleAMaintenanceFiveScreen extends ConsumerStatefulWidget {
  const ScheduleAMaintenanceFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ScheduleAMaintenanceFiveScreenState createState() =>
      ScheduleAMaintenanceFiveScreenState();
}

class ScheduleAMaintenanceFiveScreenState
    extends ConsumerState<ScheduleAMaintenanceFiveScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProgressSection(context),
              SizedBox(height: 7.v),
              Text(
                "lbl_3_of_4_progress".tr,
                style: CustomTextStyles.labelLargeGray90001,
              ),
              SizedBox(height: 28.v),
              Text(
                "lbl_address".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildAddressInput(context),
              SizedBox(height: 24.v),
              Text(
                "lbl_state".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildStateInput(context),
              SizedBox(height: 24.v),
              Text(
                "msg_alternative_contact".tr,
                style: theme.textTheme.labelLarge,
              ),
              SizedBox(height: 9.v),
              _buildAlternativeContactInput(context),
              SizedBox(height: 39.v),
              _buildSelectPickupLocationSection(context),
              SizedBox(height: 35.v),
              _buildProceedButton(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCheckmark60x60,
        margin: EdgeInsets.only(
          left: 22.h,
          bottom: 2.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "lbl_pick_up_details".tr,
              margin: EdgeInsets.only(right: 123.h),
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
  Widget _buildProgressSection(BuildContext context) {
    return Container(
      width: 342.h,
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        width: 265.h,
        padding: EdgeInsets.symmetric(
          horizontal: 9.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.fillGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Text(
          "lbl_75".tr,
          style: theme.textTheme.labelMedium,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref
              .watch(scheduleAMaintenanceFiveNotifier)
              .addressInputController,
          hintText: "msg_75_bakare_crescent".tr,
          hintStyle: CustomTextStyles.bodySmallGray90001,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildStateInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
              ref.watch(scheduleAMaintenanceFiveNotifier).stateInputController,
          hintText: "lbl_text".tr,
          hintStyle: CustomTextStyles.bodyMediumRoboto,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray50,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAlternativeContactInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref
              .watch(scheduleAMaintenanceFiveNotifier)
              .alternativeContactInputController,
          hintText: "lbl_text".tr,
          hintStyle: CustomTextStyles.bodyMediumRoboto,
          textInputAction: TextInputAction.done,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray50,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSelectPickupLocationSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_select_pick_up".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 242.h,
                  child: Text(
                    "msg_lorem_ipsum_dolor5".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 34.h),
          child: CustomIconButton(
            height: 62.adaptSize,
            width: 62.adaptSize,
            padding: EdgeInsets.all(19.h),
            decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
            child: CustomImageView(
              imagePath: ImageConstant.imgMap,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProceedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_proceed".tr,
      buttonStyle: CustomButtonStyles.fillGray,
    );
  }
}
