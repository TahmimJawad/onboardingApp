import 'dart:convert';
import 'package:http/http.dart' as http;

class LocationService {
  static Future<List<String>> searchLocation(String query) async {
    const url = 'https://nominatim.openstreetmap.org';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((item) => item['display_name'].toString()).toList();
    } else {
      return [];
    }
  }
}
