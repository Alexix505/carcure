import '../models/fourteen_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FourteenItemWidget extends StatelessWidget {
  FourteenItemWidget(
    this.fourteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FourteenItemModel fourteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: Column(
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            fourteenItemModelObj.textValue!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
