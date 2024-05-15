import '../customer_feedback_screen/widgets/userprofilelist_item_widget.dart';
import 'models/userprofilelist_item_model.dart';
import 'notifier/customer_feedback_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

class CustomerFeedbackScreen extends ConsumerStatefulWidget {
  const CustomerFeedbackScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CustomerFeedbackScreenState createState() => CustomerFeedbackScreenState();
}

class CustomerFeedbackScreenState
    extends ConsumerState<CustomerFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                      children: [
                        Text(
                          "lbl_overall_rating".tr,
                          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                        ),
                        Text(
                          "lbl_4_3".tr,
                          style: theme.textTheme.displayMedium,
                        ),
                        SizedBox(height: 1.v),
                        CustomRatingBar(
                          initialRating: 0,
                          itemSize: 24,
                        ),
                        SizedBox(height: 12.v),
                        Text(
                          "msg_based_on_50_reviews".tr,
                          style: CustomTextStyles.bodyMediumGray400,
                        ),
                        SizedBox(height: 40.v),
                        _buildOverallRatingFrame(context),
                        SizedBox(height: 13.v),
                        _buildExcellenceFrame(context),
                        SizedBox(height: 15.v),
                        _buildGoodFrame(context),
                        SizedBox(height: 15.v),
                        _buildPoorFrame(context),
                        SizedBox(height: 39.v),
                        _buildUserProfileList(context),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 3.v,
                                ),
                                child: Text(
                                  "lbl_view_all".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 6.h),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildWriteAReviewButton(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 87.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCheckmark60x60,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 11.v,
          bottom: 6.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "msg_customer_feedback".tr,
              margin: EdgeInsets.only(right: 77.h),
            ),
            SizedBox(height: 2.v),
            AppbarSubtitle(
              text: "msg_lorem_ipsum_dolor5".tr,
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildOverallRatingFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_average".tr,
          style: theme.textTheme.bodySmall,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 6.v,
            ),
            child: Container(
              height: 7.v,
              width: 272.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.74,
                  backgroundColor: appTheme.gray100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    appTheme.blueGray100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildExcellenceFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_excellence".tr,
          style: theme.textTheme.bodySmall,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Container(
              height: 7.v,
              width: 272.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.74,
                  backgroundColor: appTheme.gray100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    appTheme.blueGray100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoodFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_good".tr,
          style: theme.textTheme.bodySmall,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 38.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Container(
              height: 7.v,
              width: 272.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.59,
                  backgroundColor: appTheme.gray100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    appTheme.blueGray100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPoorFrame(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_poor".tr,
          style: theme.textTheme.bodySmall,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 44.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Container(
              height: 7.v,
              width: 272.h,
              decoration: BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  3.h,
                ),
                child: LinearProgressIndicator(
                  value: 0.34,
                  backgroundColor: appTheme.gray100,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    appTheme.blueGray100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 23.v,
            );
          },
          itemCount: ref
                  .watch(customerFeedbackNotifier)
                  .customerFeedbackModelObj
                  ?.userprofilelistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            UserprofilelistItemModel model = ref
                    .watch(customerFeedbackNotifier)
                    .customerFeedbackModelObj
                    ?.userprofilelistItemList[index] ??
                UserprofilelistItemModel();
            return UserprofilelistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildWriteAReviewButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_write_a_review".tr,
      margin: EdgeInsets.only(
        left: 17.h,
        right: 16.h,
        bottom: 59.v,
      ),
      buttonStyle: CustomButtonStyles.fillGrayTL8,
    );
  }
}
