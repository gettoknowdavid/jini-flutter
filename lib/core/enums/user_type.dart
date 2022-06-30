enum UserType { donor, recipient }

extension UserTypeExtension on UserType {
  String get value {
    switch (this) {
      case UserType.donor:
        return 'Donor';
      case UserType.recipient:
        return 'Recipient';
      default:
        return '';
    }
  }
}

const $UserTypeEnumMap = {
  UserType.donor: 'donor',
  UserType.recipient: 'recipient',
};
