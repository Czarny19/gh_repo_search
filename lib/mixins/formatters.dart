import 'package:intl/intl.dart' show DateFormat;

mixin Formatters {
  String dateToShortDisplay(String dateString) => DateFormat.yMMMd().format(DateTime.parse(dateString));
}