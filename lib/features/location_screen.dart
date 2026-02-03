import 'package:flutter/material.dart';
import 'package:onboarding_app/common_widgets/current_location_button.dart';
import 'package:onboarding_app/common_widgets/location_description.dart';
import 'package:onboarding_app/common_widgets/location_home_button.dart';
import 'package:onboarding_app/common_widgets/location_image.dart';
import 'package:onboarding_app/common_widgets/location_title.dart';
import 'package:onboarding_app/constants/background_color.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onboarding_app/helpers/home_navigation.dart';

// ignore: camel_case_types
class locationScreen extends StatefulWidget {
  const locationScreen({super.key});

  @override
  State<locationScreen> createState() => _locationScreenState();
}

// ignore: camel_case_types
class _locationScreenState extends State<locationScreen> {
  String _buttonText = "Use Current Location";

  Future<void> _getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    Position position = await Geolocator.getCurrentPosition();

    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        setState(() {
          _buttonText = "${place.locality}, ${place.country}";
          HomeNavigationService.goToAlarm(context, _buttonText);
        });
      }
    } catch (e) {
      debugPrint("Geocoding error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGradientColor(
        child: Column(
          children: [
            const locationTitleWidget(),
            const locationDescriptionWidget(),
            const locationImageWidget(),
            locationButtonWidget(
              getCurrentLocation: _getCurrentLocation,
            ),
            homeButtonWidget(
              homeScreen: () =>
                  HomeNavigationService.goToAlarm(context, 'Select Location'),
            ),
          ],
        ),
      ),
    );
  }
}
