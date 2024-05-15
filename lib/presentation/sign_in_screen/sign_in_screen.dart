import 'notifier/sign_in_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/core/utils/validation_functions.dart';
import 'package:carcure/widgets/custom_checkbox_button.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_outlined_button.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:carcure/domain/googleauth/google_auth_helper.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  SignInScreenState createState() => SignInScreenState();
}

// ignore_for_file: must_be_immutable
class SignInScreenState extends ConsumerState<SignInScreen> {
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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 16.v),
                            child: Column(children: [
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
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  theme.colorScheme.primary)))),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text("lbl_carcure2".tr,
                                          style:
                                              theme.textTheme.headlineSmall))),
                              SizedBox(height: 14.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Text("msg_sign_in_to_your".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainerSemiBold))),
                              SizedBox(height: 10.v),
                              Container(
                                  width: 331.h,
                                  margin:
                                      EdgeInsets.only(left: 17.h, right: 25.h),
                                  child: Text("msg_lorem_ipsum_dolor3".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 22.v),
                              _buildEmail(context),
                              SizedBox(height: 29.v),
                              _buildPassword(context),
                              SizedBox(height: 29.v),
                              _buildRememberMe(context),
                              SizedBox(height: 24.v),
                              _buildSixtyThree(context),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 23.h),
                                      child: Row(children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 4.v, bottom: 1.v),
                                            child: Text(
                                                "lbl_forgot_password".tr,
                                                style:
                                                    theme.textTheme.bodySmall)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: SizedBox(
                                                height: 24.v,
                                                child: VerticalDivider(
                                                    width: 1.h,
                                                    thickness: 1.v))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 5.h,
                                                top: 2.v,
                                                bottom: 1.v),
                                            child: Text("lbl_reset".tr,
                                                style: CustomTextStyles
                                                    .labelLargePrimary))
                                      ]))),
                              SizedBox(height: 39.v),
                              _buildFrame(context),
                              SizedBox(height: 24.v),
                              _buildContinueWithGoogle(context),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 5.v),
                                                child: Text(
                                                    "msg_remembered_your".tr,
                                                    style: theme
                                                        .textTheme.bodySmall)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.h),
                                                child: SizedBox(
                                                    height: 24.v,
                                                    child: VerticalDivider(
                                                        width: 1.h,
                                                        thickness: 1.v))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 7.h, top: 4.v),
                                                child: Text("lbl_sign_in".tr,
                                                    style: CustomTextStyles
                                                        .labelLargePrimary))
                                          ]))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 15.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).emailController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        }));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 15.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signInNotifier).passwordController,
              hintText: "lbl_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        }));
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Consumer(builder: (context, ref, _) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "lbl_remember_me".tr,
                  value: ref.watch(signInNotifier).rememberMe,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref.read(signInNotifier.notifier).changeCheckBox1(value);
                  });
            })));
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return Expanded(child: CustomElevatedButton(text: "lbl_sign_in".tr));
  }

  /// Section Widget
  Widget _buildSixtyThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 27.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSignIn(context),
              CustomImageView(
                  imagePath: ImageConstant.imgIcBaselineFingerprint,
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(left: 31.h, top: 4.v, bottom: 9.v))
            ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                  child: SizedBox(
                      width: 149.h,
                      child: Divider(
                          color: theme.colorScheme.onPrimaryContainer))),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text("lbl_or".tr, style: theme.textTheme.bodySmall)),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                  child: SizedBox(
                      width: 164.h,
                      child: Divider(
                          color: theme.colorScheme.onPrimaryContainer,
                          indent: 15.h)))
            ]));
  }

  /// Section Widget
  Widget _buildContinueWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        height: 48.v,
        text: "msg_continue_with_google".tr,
        margin: EdgeInsets.only(left: 17.h, right: 15.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: theme.textTheme.bodyLarge!,
        onPressed: () {
          onTapContinueWithGoogle(context);
        });
  }

  onTapContinueWithGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
