import 'package:intl/intl.dart';

String dateFormat(DateTime? dateTime) {
  if (dateTime == null) {
    return '';
  } else {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }
}
