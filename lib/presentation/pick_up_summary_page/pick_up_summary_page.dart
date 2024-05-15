import 'notifier/pick_up_summary_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PickUpSummaryPage extends ConsumerStatefulWidget {
  const PickUpSummaryPage({Key? key})
      : super(
          key: key,
        );

  @override
  PickUpSummaryPageState createState() => PickUpSummaryPageState();
}

class PickUpSummaryPageState extends ConsumerState<PickUpSummaryPage>
    with AutomaticKeepAliveClientMixin<PickUpSummaryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_pick_up_details2".tr,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildEdit(context),
                      SizedBox(height: 27.v),
                      Consumer(
                        builder: (context, ref, _) {
                          return CustomTextFormField(
                            controller: ref
                                .watch(pickUpSummaryNotifier)
                                .fullMaintenanceSchedulevalueController,
                            hintText: "msg_full_maintenance".tr,
                            textInputAction: TextInputAction.done,
                            maxLines: 8,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 30.h,
                              vertical: 26.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillGrayTL20,
                            fillColor: appTheme.gray100,
                          );
                        },
                      ),
                      SizedBox(height: 34.v),
                      Container(
                        width: 342.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_lorem_ipsum_dolor11".tr,
                                style: CustomTextStyles.bodySmallffbebebe,
                              ),
                              TextSpan(
                                text: "lbl_opeop".tr,
                                style: CustomTextStyles.bodySmallffbebebe,
                              ),
                              TextSpan(
                                text: "msg_libero_at_lorem".tr,
                                style: CustomTextStyles.bodySmallffbebebe,
                              ),
                              TextSpan(
                                text: "msg_terms_conditions".tr,
                                style:
                                    CustomTextStyles.bodySmallffbebebe.copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      CustomElevatedButton(
                        text: "msg_continue_to_negotiation".tr,
                        margin: EdgeInsets.only(left: 1.h),
                        buttonStyle: CustomButtonStyles.fillGrayTL8,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEdit(BuildContext context) {
    return SizedBox(
      height: 164.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: SizedBox(
                height: 107.v,
                child: VerticalDivider(
                  width: 2.h,
                  thickness: 2.v,
                  color: appTheme.gray100,
                  indent: 32.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 103.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 61.v,
                    width: 70.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 61.v,
                            width: 70.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray100,
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage142x63,
                          height: 42.v,
                          width: 63.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 4.v,
                    ),
                    child: _buildFiftySix(
                      context,
                      workshopName: "lbl_ajayi_badmus".tr,
                      description: "msg_lorem_ipsum_dolor9".tr,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 19.v,
                    width: 56.h,
                    text: "lbl_edit".tr,
                    margin: EdgeInsets.symmetric(vertical: 21.v),
                    buttonStyle: CustomButtonStyles.fillGrayTL5,
                    buttonTextStyle: CustomTextStyles.bodySmallBlack900,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 102.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 61.v,
                    width: 70.h,
                    margin: EdgeInsets.only(bottom: 1.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 18.h,
                      vertical: 13.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                      height: 34.adaptSize,
                      width: 34.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.v),
                    child: _buildFiftySix(
                      context,
                      workshopName: "msg_kudi_sons_workshop2".tr,
                      description: "msg_lorem_ipsum_dolor9".tr,
                    ),
                  ),
                  Container(
                    width: 56.h,
                    margin: EdgeInsets.only(
                      top: 21.v,
                      bottom: 22.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Text(
                      "lbl_change".tr,
                      style: CustomTextStyles.bodySmallBlack900,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFiftySix(
    BuildContext context, {
    required String workshopName,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          workshopName,
          style: CustomTextStyles.labelLargeSemiBold.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
        SizedBox(height: 1.v),
        SizedBox(
          width: 166.h,
          child: Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodySmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ],
    );
  }
}
