class DateModel {
  final String dayName;
  final int numeral;

  DateModel({required this.dayName, required this.numeral});
}

final List<DateModel> dates = [
  DateModel(dayName: 'Sat', numeral: 14),
  DateModel(dayName: 'Sun', numeral: 15),
  DateModel(dayName: 'Mon', numeral: 16),
  DateModel(dayName: 'Tue', numeral: 17),
  DateModel(dayName: 'Wed', numeral: 18),
  DateModel(dayName: 'Thu', numeral: 19),
  DateModel(dayName: 'Fri', numeral: 20),
];
