import '../select_a_vehicle_one_screen/widgets/userprofilegrid_item_widget.dart';
import 'models/userprofilegrid_item_model.dart';
import 'notifier/select_a_vehicle_one_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SelectAVehicleOneScreen extends ConsumerStatefulWidget {
  const SelectAVehicleOneScreen({Key? key}) : super(key: key);

  @override
  SelectAVehicleOneScreenState createState() => SelectAVehicleOneScreenState();
}

class SelectAVehicleOneScreenState
    extends ConsumerState<SelectAVehicleOneScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 8.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              color: theme.colorScheme.errorContainer),
                          child: ClipRRect(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(8.h)),
                              child: LinearProgressIndicator(
                                  value: 0.31,
                                  backgroundColor:
                                      theme.colorScheme.errorContainer,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_car_details".tr,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainerSemiBold18)),
                      SizedBox(height: 45.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("lbl_search".tr,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainerSemiBold)),
                      SizedBox(height: 9.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h, right: 15.h),
                          child: Consumer(builder: (context, ref, _) {
                            return CustomTextFormField(
                                controller: ref
                                    .watch(selectAVehicleOneNotifier)
                                    .searchController,
                                hintText: "lbl_enter_car_brand".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center);
                          })),
                      SizedBox(height: 54.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_choose_your_car".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 23.v),
                      _buildUserProfileGrid(context)
                    ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  Widget _buildUserProfileGrid(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Consumer(builder: (context, ref, _) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 73.v,
                      crossAxisCount: 4,
                      mainAxisSpacing: 20.h,
                      crossAxisSpacing: 20.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: ref
                          .watch(selectAVehicleOneNotifier)
                          .selectAVehicleOneModelObj
                          ?.userprofilegridItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    UserprofilegridItemModel model = ref
                            .watch(selectAVehicleOneNotifier)
                            .selectAVehicleOneModelObj
                            ?.userprofilegridItemList[index] ??
                        UserprofilegridItemModel();
                    return UserprofilegridItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 16.h, right: 17.h, bottom: 51.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
        onPressed: () {
          onTapNext(context);
        });
  }

  /// Navigates to the selectAVehicleTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectAVehicleTwoScreen,
    );
  }
}
