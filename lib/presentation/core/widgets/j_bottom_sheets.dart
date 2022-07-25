import 'package:flutter/material.dart';
import 'package:jini/presentation/core/common/j_location_widget.dart';
import 'package:jini/presentation/core/common/j_screen_util.dart';
import 'package:jini/presentation/profile/widgets/blood_group_grid.dart';
import 'package:jini/presentation/profile/widgets/date_of_birth_field.dart';
import 'package:jini/presentation/profile/widgets/edit_bottom_sheet.dart';
import 'package:jini/presentation/profile/widgets/gender_grid.dart';
import 'package:jini/presentation/profile/widgets/phone_field.dart';
import 'package:jini/presentation/profile/widgets/user_type_grid.dart';

class JBottomSheets {
  JBottomSheets._();

  static editName(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditNameBottomSheet(),
    );
  }

  static editLocation(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditLocationBottomSheet(),
    );
  }

  static editBloodGroup(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditBloodGroupBottomSheet(),
    );
  }

  static editUserType(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditUserTypeBottomSheet(),
    );
  }

  static editPhone(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditPhoneBottomSheet(),
    );
  }

  static editGender(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditGenderBottomSheet(),
    );
  }

  static editDateOfBirth(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditDOBBottomSheet(),
    );
  }

  static editHeight(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditHeightBottomSheet(),
    );
  }

  static editWeight(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => const EditWeightBottomSheet(),
    );
  }
}
