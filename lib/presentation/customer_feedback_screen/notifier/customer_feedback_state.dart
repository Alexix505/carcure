// ignore_for_file: must_be_immutable

part of 'customer_feedback_notifier.dart';

/// Represents the state of CustomerFeedback in the application.
class CustomerFeedbackState extends Equatable {
  CustomerFeedbackState({this.customerFeedbackModelObj});

  CustomerFeedbackModel? customerFeedbackModelObj;

  @override
  List<Object?> get props => [
        customerFeedbackModelObj,
      ];

  CustomerFeedbackState copyWith(
      {CustomerFeedbackModel? customerFeedbackModelObj}) {
    return CustomerFeedbackState(
      customerFeedbackModelObj:
          customerFeedbackModelObj ?? this.customerFeedbackModelObj,
    );
  }
}
