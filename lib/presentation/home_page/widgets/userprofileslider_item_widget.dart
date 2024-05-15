import '../models/userprofileslider_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesliderItemWidget extends StatelessWidget {
  UserprofilesliderItemWidget(
    this.userprofilesliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilesliderItemModel userprofilesliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.wireframe.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgGallery,
            height: 114.adaptSize,
            width: 114.adaptSize,
          ),
          SizedBox(height: 19.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        userprofilesliderItemModelObj.plateNo!,
                        style: CustomTextStyles.bodySmallOnSecondaryContainer,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      userprofilesliderItemModelObj.loremIpsum1!,
                      style: CustomTextStyles.labelLargeOnSecondaryContainer_1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofilesliderItemModelObj.brand!,
                        style: CustomTextStyles.bodySmallOnSecondaryContainer,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        userprofilesliderItemModelObj.loremIpsum2!,
                        style:
                            CustomTextStyles.labelLargeOnSecondaryContainer_1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userprofilesliderItemModelObj.prodYear!,
                        style: CustomTextStyles.bodySmallOnSecondaryContainer,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        userprofilesliderItemModelObj.loremIpsum3!,
                        style:
                            CustomTextStyles.labelLargeOnSecondaryContainer_1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
