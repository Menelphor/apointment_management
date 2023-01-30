extension DateParsinExtension on DateTime {
  String toGraphQlDateString() =>
      "$year-${month.toString().padLeft(2, "0")}-${day.toString().padLeft(2, "0")}";
  String toDateStringForView() =>
      "${day.toString().padLeft(2, "0")}.${month.toString().padLeft(2, "0")}.$year";
}
