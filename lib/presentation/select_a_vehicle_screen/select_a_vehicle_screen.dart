// screens/select_a_vehicle_screen/select_a_vehicle_screen.dart
import 'package:flutter/material.dart';
import '../select_a_vehicle_screen/widgets/sixtyfivechipview_item_widget.dart';
import 'models/sixtyfivechipview_item_model.dart';
import 'notifier/select_a_vehicle_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';

class SelectAVehicleScreen extends ConsumerStatefulWidget {
  const SelectAVehicleScreen({Key? key}) : super(key: key);

  @override
  SelectAVehicleScreenState createState() => SelectAVehicleScreenState();
}

class SelectAVehicleScreenState extends ConsumerState<SelectAVehicleScreen> {
  @override
  Widget build(BuildContext context) {
    List<int> yearsList = List.generate(16, (index) => 2023 - index);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildThreeColumn(context),
                SizedBox(height: 30.v),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "lbl_select_year".tr,
                    style: CustomTextStyles
                        .titleMediumOnPrimaryContainerSemiBold18,
                  ),
                ),
                SizedBox(height: 31.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 194.v,
                  width: 295.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 31.v),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "msg_choose_your_vehicle".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 18.v),
                Column(
                  children: [
                    _buildSixtyFiveChipView(context, yearsList),
                  ],
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildNextButton(context),
    );
  }

  Widget _buildThreeColumn(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillErrorContainer,
      child: CustomImageView(
        imagePath: ImageConstant.imgRectangle248x375,
        height: 8.v,
        width: 375.h,
      ),
    );
  }

  Widget _buildSixtyFiveChipView(BuildContext context, List<int> yearsList) {
    return Align(
      alignment: Alignment.center,
      child: Consumer(
        builder: (context, ref, _) {
          return Wrap(
            runSpacing: 20.v,
            spacing: 20.h,
            children: List<Widget>.generate(
              yearsList.length,
              (index) {
                int year = yearsList[index];

                SixtyfivechipviewItemModel model = ref
                        .read(selectAVehicleNotifier)
                        .selectAVehicleModelObj
                        ?.sixtyfivechipviewItemList
                        .firstWhere(
                          (item) => item.frame == year.toString(),
                          orElse: () => SixtyfivechipviewItemModel(
                            frame: year.toString(),
                            isSelected: false,
                          ),
                        ) ??
                    SixtyfivechipviewItemModel();

                return SixtyfivechipviewItemWidget(
                  model,
                  onSelectedChipView1: (value) {
                    ref
                        .read(selectAVehicleNotifier.notifier)
                        .onSelectedChipView1(index, value);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 17.h,
        bottom: 51.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimaryTL8,
    );
  }
}
