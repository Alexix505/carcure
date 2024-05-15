import 'notifier/map_integration_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MapIntegrationScreen extends ConsumerStatefulWidget {
  const MapIntegrationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MapIntegrationScreenState createState() => MapIntegrationScreenState();
}

class MapIntegrationScreenState extends ConsumerState<MapIntegrationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 766.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 486.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame336,
                        height: 486.v,
                        width: 375.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkBlueGray90060x60,
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          top: 12.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildMapIntegrationStack(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapIntegrationStack(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 336.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 1.v),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 33.v,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusStyle.customBorderTL60,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 11.h,
                          right: 43.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 90.adaptSize,
                              width: 90.adaptSize,
                              margin: EdgeInsets.only(top: 5.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 26.h,
                                vertical: 25.v,
                              ),
                              decoration: AppDecoration.wireframe.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder20,
                              ),
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgUserOnsecondarycontainer,
                                height: 37.adaptSize,
                                width: 37.adaptSize,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "lbl_3_5".tr,
                                        style: theme.textTheme.displayMedium,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 8.h,
                                          top: 30.v,
                                          bottom: 11.v,
                                        ),
                                        child: Text(
                                          "lbl_km".tr,
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "msg_kudi_and_sons_workshop".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 15.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_contact".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              SizedBox(height: 4.v),
                              Text(
                                "msg_234_705_634_111".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_estimated_time".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                "lbl_19_min".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_ratings".tr,
                                style: theme.textTheme.labelLarge,
                              ),
                              SizedBox(height: 3.v),
                              Container(
                                width: 41.h,
                                margin: EdgeInsets.only(right: 5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSignal,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(top: 1.v),
                                    ),
                                    Text(
                                      "lbl_3".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                      text: "msg_proceed_to_workshop".tr,
                      buttonStyle: CustomButtonStyles.fillGrayTL8,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.h),
              child: CustomIconButton(
                height: 63.adaptSize,
                width: 63.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.outlineBlackTL31,
                alignment: Alignment.topRight,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
