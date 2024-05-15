import '../mechanic_store_profile_screen/widgets/fourteen_item_widget.dart';
import '../mechanic_store_profile_screen/widgets/frame_item_widget.dart';
import 'dart:async';
import 'models/fourteen_item_model.dart';
import 'models/frame_item_model.dart';
import 'notifier/mechanic_store_profile_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/app_bar/appbar_leading_image.dart';
import 'package:carcure/widgets/app_bar/appbar_trailing_image.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MechanicStoreProfileScreen extends ConsumerStatefulWidget {
  const MechanicStoreProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MechanicStoreProfileScreenState createState() =>
      MechanicStoreProfileScreenState();
}

class MechanicStoreProfileScreenState
    extends ConsumerState<MechanicStoreProfileScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFortyOne(context),
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "lbl_services".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildFourteen(context),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "msg_brand_specialization".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        _buildFrame(context),
                        SizedBox(height: 14.v),
                        _buildOpeningHours(context),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(right: 60.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLocation,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 11.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "msg_km_102_lagos_ibadan".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildMap(context),
                        SizedBox(height: 20.v),
                        _buildMechanicStoreProfile(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildCertifications(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return SizedBox(
      height: 272.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.blueGray100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderBL60,
              ),
              child: Container(
                height: 215.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 12.v),
                decoration: AppDecoration.wireframe.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderBL60,
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Opacity(
                      opacity: 0.4,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector,
                        height: 80.v,
                        width: 95.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 7.v),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorGray400,
                      height: 47.v,
                      width: 92.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 54.v),
                    ),
                    CustomAppBar(
                      height: 60.v,
                      leadingWidth: 82.h,
                      leading: AppbarLeadingImage(
                        imagePath: ImageConstant.imgCheckmarkBlueGray90060x60,
                        margin: EdgeInsets.only(left: 22.h),
                      ),
                      title: Container(
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        margin: EdgeInsets.only(left: 80.h),
                        decoration: BoxDecoration(
                          color: appTheme.gray400,
                          borderRadius: BorderRadius.circular(
                            11.h,
                          ),
                        ),
                      ),
                      actions: [
                        AppbarTrailingImage(
                          imagePath: ImageConstant.imgFavorite,
                          margin: EdgeInsets.symmetric(
                            horizontal: 39.h,
                            vertical: 18.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "msg_kudi_sons_workshop2".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    width: 307.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor7".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 84.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 3.v,
                          ),
                          decoration:
                              AppDecoration.fillOnSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            "lbl_55_users".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 3.v,
                          ),
                          decoration:
                              AppDecoration.fillOnSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSignal,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_4".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 57.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 2.v,
                          ),
                          decoration:
                              AppDecoration.fillOnSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            "lbl_open".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Container(
                          width: 57.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.h,
                            vertical: 3.v,
                          ),
                          decoration:
                              AppDecoration.fillOnSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Text(
                            "lbl_1_9km".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return SizedBox(
      height: 92.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 4.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 62.h,
              );
            },
            itemCount: ref
                    .watch(mechanicStoreProfileNotifier)
                    .mechanicStoreProfileModelObj
                    ?.fourteenItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              FourteenItemModel model = ref
                      .watch(mechanicStoreProfileNotifier)
                      .mechanicStoreProfileModelObj
                      ?.fourteenItemList[index] ??
                  FourteenItemModel();
              return FourteenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return SizedBox(
      height: 70.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 21.h,
              );
            },
            itemCount: ref
                    .watch(mechanicStoreProfileNotifier)
                    .mechanicStoreProfileModelObj
                    ?.frameItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              FrameItemModel model = ref
                      .watch(mechanicStoreProfileNotifier)
                      .mechanicStoreProfileModelObj
                      ?.frameItemList[index] ??
                  FrameItemModel();
              return FrameItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildOpeningHours(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Text(
            "lbl_opening_hours".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCalendar,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 4.v,
                ),
                child: Text(
                  "msg_monday_saturday".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(left: 24.h),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 4.v,
                ),
                child: Text(
                  "msg_10_00_am_10_00pm2".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 168.v,
      width: 343.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildMechanicStoreProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "msg_customer_feedback".tr,
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCertifications(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 42.h,
        right: 42.h,
        bottom: 52.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "lbl_certifications".tr,
              style: CustomTextStyles.bodyMediumBlack900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
