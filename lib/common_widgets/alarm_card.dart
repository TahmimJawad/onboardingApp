import 'package:flutter/material.dart';
import '../helpers/alarm_model.dart';

class AlarmTile extends StatelessWidget {
  final AlarmModel alarm;
  final ValueChanged<bool> onToggle;

  const AlarmTile({
    super.key,
    required this.alarm,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.1),
      child: ListTile(
        title: Text(
          "${alarm.dateTime.hour.toString().padLeft(2, '0')}:${alarm.dateTime.minute.toString().padLeft(2, '0')}",
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        trailing: Switch(
          value: alarm.isEnabled,
          onChanged: onToggle,
          activeColor: Colors.purple,
        ),
      ),
    );
  }
}
