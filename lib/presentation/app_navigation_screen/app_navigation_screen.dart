import 'notifier/app_navigation_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Email Verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.emailVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Create Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPasswordScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Reset".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordResetScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Password Reset Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.passwordResetTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select a Vehicle One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectAVehicleOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select a Vehicle Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.selectAVehicleTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select a Vehicle".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectAVehicleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pick Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pickUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Workshop List".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.workshopListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mechanic Store Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mechanicStoreProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Customer Feedback".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.customerFeedbackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Pick Up Summary - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.pickUpSummaryTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Map Integration".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mapIntegrationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Drop Off".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.dropOffScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Schedule a Maintenance".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.scheduleAMaintenanceScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
