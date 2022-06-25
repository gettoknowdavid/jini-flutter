enum BloodGroup {
  aPlus,
  aMinus,
  bPlus,
  bMinus,
  oPlus,
  oMinus,
  abPlus,
  abMinus,
}

extension BloodGroupExtension on BloodGroup {
  String get value {
    switch (this) {
      case BloodGroup.aPlus:
        return 'A+';
      case BloodGroup.aMinus:
        return 'A-';
      case BloodGroup.bPlus:
        return 'B+';
      case BloodGroup.bMinus:
        return 'B+';
      case BloodGroup.oPlus:
        return 'O+';
      case BloodGroup.oMinus:
        return 'O-';
      case BloodGroup.abPlus:
        return 'AB+';
      case BloodGroup.abMinus:
        return 'AB+';
      default:
        return '';
    }
  }
}
