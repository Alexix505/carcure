import 'notifier/drop_off_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DropOffScreen extends ConsumerStatefulWidget {
  const DropOffScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DropOffScreenState createState() => DropOffScreenState();
}

class DropOffScreenState extends ConsumerState<DropOffScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              _buildTwenty(context),
              SizedBox(height: 7.v),
              Text(
                "lbl_2_of_4_progress".tr,
                style: CustomTextStyles.labelLargeGray90001,
              ),
              SizedBox(height: 56.v),
              _buildFrame(
                context,
                dropOffText: "lbl_pick_up".tr,
                descriptionText: "msg_lorem_ipsum_dolor5".tr,
                settingsImage: ImageConstant.imgCheckmarkOnprimarycontainer,
              ),
              SizedBox(height: 41.v),
              _buildFrame(
                context,
                dropOffText: "lbl_drop_off".tr,
                descriptionText: "msg_lorem_ipsum_dolor5".tr,
                settingsImage: ImageConstant.imgSettings,
              ),
              SizedBox(height: 41.v),
              CustomElevatedButton(
                text: "lbl_proceed".tr,
                buttonStyle: CustomButtonStyles.fillGrayTL8,
              ),
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
              text: "lbl_service_style".tr,
              margin: EdgeInsets.only(right: 138.h),
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
  Widget _buildTwenty(BuildContext context) {
    return Container(
      width: 342.h,
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        width: 180.h,
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.fillGray400.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Text(
          "lbl_50".tr,
          style: theme.textTheme.labelMedium,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String dropOffText,
    required String descriptionText,
    required String settingsImage,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 8.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dropOffText,
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 242.h,
                    child: Text(
                      descriptionText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: settingsImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 27.h,
              top: 22.v,
              bottom: 21.v,
            ),
          ),
        ],
      ),
    );
  }
}
