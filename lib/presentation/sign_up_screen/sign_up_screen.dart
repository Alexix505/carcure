import 'notifier/sign_up_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/core/utils/validation_functions.dart';
import 'package:carcure/widgets/custom_checkbox_button.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_outlined_button.dart';
import 'package:carcure/widgets/custom_phone_number.dart';
import 'package:carcure/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:carcure/domain/googleauth/google_auth_helper.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

// ignore_for_file: must_be_immutable
class SignUpScreenState extends ConsumerState<SignUpScreen> {
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
                                      child: Text("msg_create_your_account".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainerSemiBold))),
                              SizedBox(height: 9.v),
                              Container(
                                  width: 331.h,
                                  margin:
                                      EdgeInsets.only(left: 17.h, right: 25.h),
                                  child: Text("msg_lorem_ipsum_dolor3".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall)),
                              SizedBox(height: 22.v),
                              _buildFullName(context),
                              SizedBox(height: 29.v),
                              _buildEmail(context),
                              SizedBox(height: 29.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  child: _buildPhoneNumber(context)),
                              SizedBox(height: 16.v),
                              _buildAcceptTermsCheckBox(context),
                              SizedBox(height: 37.v),
                              _buildSignUpButton(context),
                              SizedBox(height: 24.v),
                              _buildRowFrame(context),
                              SizedBox(height: 24.v),
                              _buildContinueWithGoogleButton(context),
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
  Widget _buildFullName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 15.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signUpNotifier).fullNameController,
              hintText: "lbl_enter_full_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 15.h),
        child: Consumer(builder: (context, ref, _) {
          return CustomTextFormField(
              controller: ref.watch(signUpNotifier).emailController,
              hintText: "msg_enter_email_address".tr,
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
  Widget _buildPhoneNumber(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return CustomPhoneNumber(
          country: ref.watch(signUpNotifier).selectedCountry ??
              CountryPickerUtils.getCountryByPhoneCode('1'),
          controller: ref.watch(signUpNotifier).phoneNumberController,
          onTap: (Country value) {
            ref.watch(signUpNotifier).selectedCountry = value;
          });
    });
  }

  /// Section Widget
  Widget _buildAcceptTermsCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Consumer(builder: (context, ref, _) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "msg_i_accept_the_terms".tr,
                  value: ref.watch(signUpNotifier).acceptTermsCheckBox,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    ref.read(signUpNotifier.notifier).changeCheckBox1(value);
                  });
            })));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        onPressed: () {},
        text: "lbl_sign_up".tr,
        margin: EdgeInsets.only(left: 16.h, right: 15.h));
  }

  /// Section Widget
  Widget _buildRowFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  width: 125.h,
                  child: Divider(
                      thickness: 2,
                      color: theme.colorScheme.onPrimaryContainer)),
              Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text("lbl_or".tr, style: theme.textTheme.bodySmall)),
              SizedBox(
                  width: 145.h,
                  child: Divider(
                      thickness: 2,
                      color: theme.colorScheme.onPrimaryContainer,
                      indent: 15.h))
            ]));
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
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
          onTapContinueWithGoogleButton(context);
        });
  }

  onTapContinueWithGoogleButton(BuildContext context) async {
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
