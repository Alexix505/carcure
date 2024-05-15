import '../models/userprofile_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 26.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 2.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileItemModelObj.brand!,
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    userprofileItemModelObj.loremIpsum!,
                    style: theme.textTheme.labelLarge,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    children: [
                      Text(
                        userprofileItemModelObj.dueForService!,
                        style: theme.textTheme.bodySmall,
                      ),
                      Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadius.circular(
                            5.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 66.adaptSize,
              width: 66.adaptSize,
              margin: EdgeInsets.only(bottom: 7.v),
            ),
          ],
        ),
      ),
    );
  }
}
