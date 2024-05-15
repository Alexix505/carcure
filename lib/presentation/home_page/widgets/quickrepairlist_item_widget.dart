import '../models/quickrepairlist_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class QuickrepairlistItemWidget extends StatelessWidget {
  QuickrepairlistItemWidget(
    this.quickrepairlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuickrepairlistItemModel quickrepairlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.wireframe.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 139.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 39.h,
            margin: EdgeInsets.only(top: 2.v),
            child: Text(
              quickrepairlistItemModelObj.quickRepair!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnSecondaryContainer_1,
            ),
          ),
          Container(
            height: 34.adaptSize,
            width: 34.adaptSize,
            margin: EdgeInsets.only(
              left: 50.h,
              top: 2.v,
              bottom: 2.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray100,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
