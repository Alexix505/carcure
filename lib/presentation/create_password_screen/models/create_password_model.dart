// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [create_password_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreatePasswordModel extends Equatable {
  CreatePasswordModel() {}

  CreatePasswordModel copyWith() {
    return CreatePasswordModel();
  }

  @override
  List<Object?> get props => [];
}
