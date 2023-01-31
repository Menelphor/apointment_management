import 'package:intl/intl.dart';

extension DateParsinExtension on DateTime {
  String toGraphQlDateString() => DateFormat("yyyy-MM-dd").format(this);
  String toDateStringForView() => DateFormat.yMMMMd('de_DE').format(this);
}
