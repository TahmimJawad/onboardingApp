import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> scheduleAlarm({
    required int id,
    required DateTime dateTime,
  }) async {
    final tzDateTime = tz.TZDateTime.from(dateTime, tz.local);

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'Alarm',
      'Time to wake up!',
      tzDateTime,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'alarm_channel',
          'Alarms',
          channelDescription: 'Alarm notifications',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.time,
    );
  }

  static Future<void> cancel(int id) async {
    await _flutterLocalNotificationsPlugin.cancel(id);
  }
}
