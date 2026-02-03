import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_app/common_widgets/alarm_card.dart';
import 'package:onboarding_app/helpers/alarm_model.dart';
import 'package:onboarding_app/helpers/notification_service.dart';
import 'package:onboarding_app/constants/background_color.dart';

class AlarmScreen extends StatefulWidget {
  final String? selectedLocation;

  const AlarmScreen({
    super.key,
    required this.selectedLocation,
  });

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  final List<AlarmModel> alarms = [];

  Future<void> addAlarm() async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );

    if (!mounted || date == null) return;
    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (!mounted || time == null) return;
    final dateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute,
    );

    final id = DateTime.now().millisecondsSinceEpoch % 100000;
    final alarm = AlarmModel(
      id: id,
      dateTime: dateTime,
      isEnabled: true,
    );

    await NotificationService.scheduleAlarm(
      id: alarm.id,
      dateTime: alarm.dateTime,
    );

    if (!mounted) return;
    setState(() => alarms.add(alarm));
  }

  void toggleAlarm(AlarmModel alarm, bool value) async {
    setState(() => alarm.isEnabled = value);

    if (value) {
      await NotificationService.scheduleAlarm(
        id: alarm.id,
        dateTime: alarm.dateTime,
      );
    } else {
      await NotificationService.cancel(alarm.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 82, 0, 255),
        onPressed: addAlarm,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: BackgroundGradientColor(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  top: 80, bottom: 20, left: 16, right: 16),
              child: Text(
                widget.selectedLocation ?? "Select Location",
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20, left: 16),
              child: Text(
                "Alarms",
                style: GoogleFonts.oxygen(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: alarms.isEmpty
                    ? const Center(
                        child: Text(
                          "No alarms yet",
                          style: TextStyle(color: Colors.white54),
                        ),
                      )
                    : ListView.builder(
                        itemCount: alarms.length,
                        itemBuilder: (_, i) {
                          final alarm = alarms[i];
                          return AlarmTile(
                            alarm: alarm,
                            onToggle: (v) => toggleAlarm(alarm, v),
                          );
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
