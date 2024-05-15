import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:carcure/presentation/customer_feedback_screen/models/customer_feedback_model.dart';
part 'customer_feedback_state.dart';

final customerFeedbackNotifier =
    StateNotifierProvider<CustomerFeedbackNotifier, CustomerFeedbackState>(
  (ref) => CustomerFeedbackNotifier(CustomerFeedbackState(
    customerFeedbackModelObj: CustomerFeedbackModel(userprofilelistItemList: [
      UserprofilelistItemModel(
          userName: "Martin Kent",
          userDescription: "2 days ago",
          description:
              "Lorem ipsum dolor sit amet consectetur adipisc\ning elit dolor sit ame. Phasellus eu tellus eu nunc \nconvallis tempus eu ac orci. Sed quis euismoder \nlectus placerat."),
      UserprofilelistItemModel(
          userName: "Martin Kent",
          userDescription: "2 days ago",
          description:
              "Lorem ipsum dolor sit amet consectetur adipisc\ning elit dolor sit ame. Phasellus eu tellus eu nunc \nconvallis tempus eu ac orci. Sed quis euismoder \nlectus placerat.")
    ]),
  )),
);

/// A notifier that manages the state of a CustomerFeedback according to the event that is dispatched to it.
class CustomerFeedbackNotifier extends StateNotifier<CustomerFeedbackState> {
  CustomerFeedbackNotifier(CustomerFeedbackState state) : super(state) {}
}
