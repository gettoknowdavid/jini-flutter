import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_location_widget.dart';
import 'package:jini/presentation/profile/widgets/date_of_birth_field.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';
import 'package:jini/presentation/profile/widgets/gender_grid.dart';
import 'package:jini/presentation/profile/widgets/phone_field.dart';
import 'package:jini/presentation/profile/widgets/user_type_grid.dart';

class JBottomSheets {
  JBottomSheets._();

  static editLocation(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditLocationBottomSheet(),
    );
  }

  static editUserType(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditUserTypeBottomSheet(),
    );
  }

  static editPhone(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditPhoneBottomSheet(),
    );
  }

  static editGender(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditGenderBottomSheet(),
    );
  }

  static editDateOfBirth(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditDOBBottomSheet(),
    );
  }

  static editHeight(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditHeightBottomSheet(),
    );
  }

  static editWeight(BuildContext context) {
    return showBottomSheet(
      context: context,
      builder: (context) => const EditWeightBottomSheet(),
    );
  }
}
