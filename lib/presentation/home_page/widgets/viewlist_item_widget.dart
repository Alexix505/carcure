import '../models/viewlist_item_model.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewlistItemWidget extends StatelessWidget {
  ViewlistItemWidget(
    this.viewlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewlistItemModel viewlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.h,
      child: Align(
        alignment: Alignment.center,
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
              viewlistItemModelObj.quickRepair!,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
