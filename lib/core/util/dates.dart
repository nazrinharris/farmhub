String returnCurrentDate() {
  final now = DateTime.now();

  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  final String month = months[now.month - 1];
  final int day = now.day;

  return "$day $month";
}
