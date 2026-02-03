class AlarmModel {
  final int id;
  DateTime dateTime;
  bool isEnabled;

  AlarmModel({
    required this.id,
    required this.dateTime,
    this.isEnabled = true,
  });
}
