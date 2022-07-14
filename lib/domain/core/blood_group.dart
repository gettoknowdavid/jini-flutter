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
        return 'B-';
      case BloodGroup.oPlus:
        return 'O+';
      case BloodGroup.oMinus:
        return 'O-';
      case BloodGroup.abPlus:
        return 'AB+';
      case BloodGroup.abMinus:
        return 'AB-';
      default:
        return '';
    }
  }
}

extension BloodGroupDExtension on BloodGroup {
  String get desc {
    switch (this) {
      case BloodGroup.aPlus:
        return 'A Positive';
      case BloodGroup.aMinus:
        return 'A Negative';
      case BloodGroup.bPlus:
        return 'B Positive';
      case BloodGroup.bMinus:
        return 'B Negative';
      case BloodGroup.oPlus:
        return 'O Positive';
      case BloodGroup.oMinus:
        return 'O Negative';
      case BloodGroup.abPlus:
        return 'AB Positive';
      case BloodGroup.abMinus:
        return 'AB Negative';
      default:
        return '';
    }
  }
}

const $BloodGroupEnumMap = {
  BloodGroup.aPlus: 'A+',
  BloodGroup.aMinus: 'A-',
  BloodGroup.bPlus: 'B+',
  BloodGroup.bMinus: 'B-',
  BloodGroup.oPlus: 'O+',
  BloodGroup.oMinus: 'O-',
  BloodGroup.abPlus: 'AB+',
  BloodGroup.abMinus: 'AB-',
};
