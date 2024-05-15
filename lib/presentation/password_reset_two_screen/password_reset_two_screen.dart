import 'notifier/password_reset_two_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/core/utils/validation_functions.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_icon_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PasswordResetTwoScreen extends ConsumerStatefulWidget {
  const PasswordResetTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PasswordResetTwoScreenState createState() => PasswordResetTwoScreenState();
}

class PasswordResetTwoScreenState
    extends ConsumerState<PasswordResetTwoScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                  children: [
                    Container(
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
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: CustomIconButton(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        alignment: Alignment.centerLeft,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark60x60,
                        ),
                      ),
                    ),
                    SizedBox(height: 39.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgLayer1Errorcontainer57x67,
                      height: 57.v,
                      width: 67.h,
                    ),
                    SizedBox(height: 56.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 18.h),
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
                        left: 18.h,
                        right: 25.h,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor4".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 18.h,
                      ),
                      child: Consumer(
                        builder: (context, ref, _) {
                          return CustomTextFormField(
                            controller: ref
                                .watch(passwordResetTwoNotifier)
                                .passwordController,
                            hintText: "lbl_enter_password".tr,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray50,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14.h,
                        right: 18.h,
                      ),
                      child: Consumer(
                        builder: (context, ref, _) {
                          return CustomTextFormField(
                            controller: ref
                                .watch(passwordResetTwoNotifier)
                                .confirmpasswordController,
                            hintText: "msg_confirm_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray50,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 38.v),
                    CustomElevatedButton(
                      text: "lbl_confirm".tr,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 17.h,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 17.h),
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
}
