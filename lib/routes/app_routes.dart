import 'package:flutter/material.dart';
import 'package:carcure/presentation/splash_screen/splash_screen.dart';
import 'package:carcure/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:carcure/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:carcure/presentation/splash_four_screen/splash_four_screen.dart';
import 'package:carcure/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:carcure/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:carcure/presentation/email_verification_screen/email_verification_screen.dart';
import 'package:carcure/presentation/create_password_screen/create_password_screen.dart';
import 'package:carcure/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:carcure/presentation/password_reset_screen/password_reset_screen.dart';
import 'package:carcure/presentation/password_reset_two_screen/password_reset_two_screen.dart';
import 'package:carcure/presentation/select_a_vehicle_one_screen/select_a_vehicle_one_screen.dart';
import 'package:carcure/presentation/select_a_vehicle_two_screen/select_a_vehicle_two_screen.dart';
import 'package:carcure/presentation/select_a_vehicle_screen/select_a_vehicle_screen.dart';
import 'package:carcure/presentation/home_container_screen/home_container_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_one_screen/schedule_a_maintenance_one_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_two_screen/schedule_a_maintenance_two_screen.dart';
import 'package:carcure/presentation/pick_up_screen/pick_up_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_five_screen/schedule_a_maintenance_five_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_four_screen/schedule_a_maintenance_four_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_three_screen/schedule_a_maintenance_three_screen.dart';
import 'package:carcure/presentation/workshop_list_screen/workshop_list_screen.dart';
import 'package:carcure/presentation/mechanic_store_profile_screen/mechanic_store_profile_screen.dart';
import 'package:carcure/presentation/customer_feedback_screen/customer_feedback_screen.dart';
import 'package:carcure/presentation/pick_up_summary_tab_container_screen/pick_up_summary_tab_container_screen.dart';
import 'package:carcure/presentation/map_integration_screen/map_integration_screen.dart';
import 'package:carcure/presentation/drop_off_screen/drop_off_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_six_screen/schedule_a_maintenance_six_screen.dart';
import 'package:carcure/presentation/schedule_a_maintenance_screen/schedule_a_maintenance_screen.dart';
import 'package:carcure/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String splashFourScreen = '/splash_four_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String emailVerificationScreen = '/email_verification_screen';

  static const String createPasswordScreen = '/create_password_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String passwordResetScreen = '/password_reset_screen';

  static const String passwordResetTwoScreen = '/password_reset_two_screen';

  static const String selectAVehicleOneScreen = '/select_a_vehicle_one_screen';

  static const String selectAVehicleTwoScreen = '/select_a_vehicle_two_screen';

  static const String selectAVehicleScreen = '/select_a_vehicle_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String scheduleAMaintenanceOneScreen =
      '/schedule_a_maintenance_one_screen';

  static const String scheduleAMaintenanceTwoScreen =
      '/schedule_a_maintenance_two_screen';

  static const String pickUpScreen = '/pick_up_screen';

  static const String scheduleAMaintenanceFiveScreen =
      '/schedule_a_maintenance_five_screen';

  static const String scheduleAMaintenanceFourScreen =
      '/schedule_a_maintenance_four_screen';

  static const String scheduleAMaintenanceThreeScreen =
      '/schedule_a_maintenance_three_screen';

  static const String workshopListScreen = '/workshop_list_screen';

  static const String mechanicStoreProfileScreen =
      '/mechanic_store_profile_screen';

  static const String customerFeedbackScreen = '/customer_feedback_screen';

  static const String pickUpSummaryPage = '/pick_up_summary_page';

  static const String pickUpSummaryTabContainerScreen =
      '/pick_up_summary_tab_container_screen';

  static const String mapIntegrationScreen = '/map_integration_screen';

  static const String dropOffScreen = '/drop_off_screen';

  static const String scheduleAMaintenanceSixScreen =
      '/schedule_a_maintenance_six_screen';

  static const String scheduleAMaintenanceScreen =
      '/schedule_a_maintenance_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    splashTwoScreen: (context) => SplashTwoScreen(),
    splashOneScreen: (context) => SplashOneScreen(),
    splashFourScreen: (context) => SplashFourScreen(),
    splashThreeScreen: (context) => SplashThreeScreen(),
    signUpScreen: (context) => SignUpScreen(),
    emailVerificationScreen: (context) => EmailVerificationScreen(),
    createPasswordScreen: (context) => CreatePasswordScreen(),
    signInScreen: (context) => SignInScreen(),
    passwordResetScreen: (context) => PasswordResetScreen(),
    passwordResetTwoScreen: (context) => PasswordResetTwoScreen(),
    selectAVehicleOneScreen: (context) => SelectAVehicleOneScreen(),
    selectAVehicleTwoScreen: (context) => SelectAVehicleTwoScreen(),
    selectAVehicleScreen: (context) => SelectAVehicleScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    scheduleAMaintenanceOneScreen: (context) => ScheduleAMaintenanceOneScreen(),
    scheduleAMaintenanceTwoScreen: (context) => ScheduleAMaintenanceTwoScreen(),
    pickUpScreen: (context) => PickUpScreen(),
    scheduleAMaintenanceFiveScreen: (context) =>
        ScheduleAMaintenanceFiveScreen(),
    scheduleAMaintenanceFourScreen: (context) =>
        ScheduleAMaintenanceFourScreen(),
    scheduleAMaintenanceThreeScreen: (context) =>
        ScheduleAMaintenanceThreeScreen(),
    workshopListScreen: (context) => WorkshopListScreen(),
    mechanicStoreProfileScreen: (context) => MechanicStoreProfileScreen(),
    customerFeedbackScreen: (context) => CustomerFeedbackScreen(),
    pickUpSummaryTabContainerScreen: (context) =>
        PickUpSummaryTabContainerScreen(),
    mapIntegrationScreen: (context) => MapIntegrationScreen(),
    dropOffScreen: (context) => DropOffScreen(),
    scheduleAMaintenanceSixScreen: (context) => ScheduleAMaintenanceSixScreen(),
    scheduleAMaintenanceScreen: (context) => ScheduleAMaintenanceScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen(),
  };
}
