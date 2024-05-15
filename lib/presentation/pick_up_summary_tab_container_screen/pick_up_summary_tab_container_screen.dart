import 'notifier/pick_up_summary_tab_container_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/presentation/pick_up_summary_page/pick_up_summary_page.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_subtitle.dart';
import 'package:carcure/widgets/app_bar/appbar_title.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PickUpSummaryTabContainerScreen extends ConsumerStatefulWidget {
  const PickUpSummaryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PickUpSummaryTabContainerScreenState createState() =>
      PickUpSummaryTabContainerScreenState();
}

class PickUpSummaryTabContainerScreenState
    extends ConsumerState<PickUpSummaryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 12.v),
            child: Column(
              children: [
                _buildTabview(context),
                SizedBox(
                  height: 654.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      PickUpSummaryPage(),
                      PickUpSummaryPage(),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 77.v,
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgCheckmark60x60,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 12.v,
          bottom: 5.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Column(
          children: [
            AppbarTitle(
              text: "lbl_review_summary".tr,
              margin: EdgeInsets.only(right: 99.h),
            ),
            AppbarSubtitle(
              text: "msg_lorem_ipsum_dolor5".tr,
            ),
          ],
        ),
      ),
      styleType: Style.bgFill_2,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 342.h,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          10.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            8.h,
          ),
          border: Border.all(
            color: theme.colorScheme.onPrimaryContainer,
            width: 1.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_pick_up2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_drop_off2".tr,
            ),
          ),
        ],
      ),
    );
  }
}
