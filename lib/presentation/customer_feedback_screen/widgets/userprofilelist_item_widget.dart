import '../models/userprofilelist_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 53.v,
                width: 56.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 13.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 14.h,
                  top: 5.v,
                  bottom: 12.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userprofilelistItemModelObj.userName!,
                      style: theme.textTheme.labelLarge,
                    ),
                    SizedBox(height: 5.v),
                    CustomRatingBar(
                      ignoreGestures: true,
                      initialRating: 0,
                      itemCount: 4,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  top: 8.v,
                  bottom: 29.v,
                ),
                child: Text(
                  userprofilelistItemModelObj.userDescription!,
                  style: CustomTextStyles.bodySmallGray400,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 289.h,
            child: Text(
              userprofilelistItemModelObj.description!,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
