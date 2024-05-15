import 'notifier/password_reset_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/core/utils/validation_functions.dart';
import 'package:carcure/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordResetScreen extends ConsumerStatefulWidget {
  const PasswordResetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PasswordResetScreenState createState() => PasswordResetScreenState();
}

class PasswordResetScreenState extends ConsumerState<PasswordResetScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 39.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1Errorcontainer,
                      height: 70.v,
                      width: 67.h,
                    ),
                    SizedBox(height: 43.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "msg_reset_your_password".tr,
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerSemiBold,
                        ),
                      ),
                    ),
                    Container(
                      width: 331.h,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        right: 11.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor4".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomTextFormField(
                          controller:
                              ref.watch(passwordResetNotifier).emailController,
                          hintText: "lbl_enter_email".tr,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          fillColor: appTheme.gray50,
                        );
                      },
                    ),
                    SizedBox(height: 38.v),
                    CustomElevatedButton(
                      text: "lbl_confirm".tr,
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 5.v),
                              child: Text(
                                "msg_remembered_your".tr,
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: SizedBox(
                                height: 24.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 7.h,
                                top: 4.v,
                              ),
                              child: Text(
                                "lbl_sign_in".tr,
                                style: CustomTextStyles.labelLargePrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 100.v,
      centerTitle: true,
      title: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 8.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: theme.colorScheme.errorContainer,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(8.h),
                ),
                child: LinearProgressIndicator(
                  value: 0.65,
                  backgroundColor: theme.colorScheme.errorContainer,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.v),
          AppbarTitleIconbutton(
            imagePath: ImageConstant.imgCheckmark60x60,
            margin: EdgeInsets.only(
              left: 22.h,
              right: 293.h,
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }
}
