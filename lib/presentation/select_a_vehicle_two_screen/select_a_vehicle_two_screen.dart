import '../select_a_vehicle_two_screen/widgets/selectavehiclechipview_item_widget.dart';
import 'models/selectavehiclechipview_item_model.dart';
import 'notifier/select_a_vehicle_two_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SelectAVehicleTwoScreen extends ConsumerStatefulWidget {
  const SelectAVehicleTwoScreen({Key? key}) : super(key: key);

  @override
  SelectAVehicleTwoScreenState createState() => SelectAVehicleTwoScreenState();
}

class SelectAVehicleTwoScreenState
    extends ConsumerState<SelectAVehicleTwoScreen> {
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
                                  value: 0.59,
                                  backgroundColor:
                                      theme.colorScheme.errorContainer,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      theme.colorScheme.primary)))),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_select_brand_model".tr,
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
                                    .watch(selectAVehicleTwoNotifier)
                                    .searchController,
                                hintText: "lbl_model".tr,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center);
                          })),
                      SizedBox(height: 54.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_choose_your_brand".tr,
                              style: theme.textTheme.bodySmall)),
                      SizedBox(height: 23.v),
                      _buildSelectAVehicleChipView(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildSelectAVehicleChipView(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Consumer(builder: (context, ref, _) {
          return Wrap(
              runSpacing: 20.v,
              spacing: 20.h,
              children: List<Widget>.generate(
                  ref
                          .watch(selectAVehicleTwoNotifier)
                          .selectAVehicleTwoModelObj
                          ?.selectavehiclechipviewItemList
                          .length ??
                      0, (index) {
                SelectavehiclechipviewItemModel model = ref
                        .watch(selectAVehicleTwoNotifier)
                        .selectAVehicleTwoModelObj
                        ?.selectavehiclechipviewItemList[index] ??
                    SelectavehiclechipviewItemModel();
                return SelectavehiclechipviewItemWidget(model,
                    onSelectedChipView1: (value) {
                  ref
                      .read(selectAVehicleTwoNotifier.notifier)
                      .onSelectedChipView1(index, value);
                });
              }));
        }));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 16.h, right: 17.h, bottom: 51.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL8,
        onPressed: () {
          onTapNextButton(context);
        });
  }

  /// Navigates to the selectAVehicleScreen when the action is triggered.
  onTapNextButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.selectAVehicleScreen,
    );
  }
}
