import '../models/fortytwo_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FortytwoItemWidget extends StatelessWidget {
  FortytwoItemWidget(
    this.fortytwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortytwoItemModel fortytwoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
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
                  Container(
                    height: 84.v,
                    width: 213.h,
                    margin: EdgeInsets.only(
                      left: 35.h,
                      top: 6.v,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavorite,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.only(right: 2.h),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_lorem_ipsur".tr,
                                style: theme.textTheme.labelLarge,
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
                                width: 213.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgSignal,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Text(
                                      "lbl_4".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 7.v),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "lbl_5km".tr,
                                      style: theme.textTheme.bodySmall,
                                    ),
                                    Container(
                                      height: 3.adaptSize,
                                      width: 3.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 7.v),
                                      decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
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
                                              style: CustomTextStyles
                                                  .bodySmallff262424,
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
          ],
        ),
      ),
    );
  }
}
