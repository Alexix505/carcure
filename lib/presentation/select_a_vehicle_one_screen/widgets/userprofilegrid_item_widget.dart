import '../models/userprofilegrid_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilegridItemWidget extends StatelessWidget {
  UserprofilegridItemWidget(
    this.userprofilegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilegridItemModel userprofilegridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            height: 45.v,
            width: 71.h,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 9.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: userprofilegridItemModelObj?.userImage,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            userprofilegridItemModelObj.userName!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
