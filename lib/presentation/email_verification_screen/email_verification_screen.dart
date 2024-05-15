import 'notifier/email_verification_notifier.dart';
import 'package:carcure/core/app_export.dart';
import 'package:carcure/widgets/custom_elevated_button.dart';
import 'package:carcure/widgets/custom_icon_button.dart';
import 'package:carcure/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends ConsumerStatefulWidget {
  const EmailVerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmailVerificationScreenState createState() => EmailVerificationScreenState();
}

class EmailVerificationScreenState
    extends ConsumerState<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
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
              SizedBox(height: 45.v),
              CustomImageView(
                imagePath: ImageConstant.imgLayer1,
                height: 65.v,
                width: 67.h,
              ),
              SizedBox(height: 54.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "msg_verify_your_email".tr,
                    style:
                        CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_enter_the_5_digit".tr,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 22.h,
                  right: 21.h,
                ),
                child: Consumer(
                  builder: (context, ref, _) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller:
                          ref.watch(emailVerificationNotifier).otpController,
                      onChanged: (value) {
                        ref
                            .watch(emailVerificationNotifier)
                            .otpController
                            ?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "msg_didn_t_recieve_an".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: SizedBox(
                          height: 19.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 1.v,
                        ),
                        child: Text(
                          "lbl_resend_otp".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              CustomElevatedButton(
                text: "lbl_verify".tr,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 17.h,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
