import 'notifier/create_password_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/core/utils/validation_functions.dart';
import 'package:carcure/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:carcure/widgets/app_bar/appbar_title_image.dart';
import 'package:carcure/widgets/app_bar/custom_app_bar.dart';
import 'package:carcure/widgets/custom_checkbox_button.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CreatePasswordScreen extends ConsumerStatefulWidget {
  const CreatePasswordScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CreatePasswordScreenState createState() => CreatePasswordScreenState();
}

class CreatePasswordScreenState extends ConsumerState<CreatePasswordScreen> {
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
                  vertical: 37.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgThumbsUp,
                      height: 100.v,
                      width: 67.h,
                    ),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          "msg_create_your_password".tr,
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
                        "msg_lorem_ipsum_dolor3".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    SizedBox(height: 22.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomTextFormField(
                          controller: ref
                              .watch(createPasswordNotifier)
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
                        );
                      },
                    ),
                    SizedBox(height: 29.v),
                    Consumer(
                      builder: (context, ref, _) {
                        return CustomTextFormField(
                          controller: ref
                              .watch(createPasswordNotifier)
                              .passwordController1,
                          hintText: "msg_re_enter_password".tr,
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
                        );
                      },
                    ),
                    SizedBox(height: 16.v),
                    _buildRememberPassword(context),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      text: "lbl_save_password".tr,
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
          AppbarTitleImage(
            imagePath: ImageConstant.imgRectangle24,
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
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildRememberPassword(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Consumer(
        builder: (context, ref, _) {
          return CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_remember_password".tr,
            value: ref.watch(createPasswordNotifier).rememberPassword,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            onChange: (value) {
              ref.read(createPasswordNotifier.notifier).changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }
}
