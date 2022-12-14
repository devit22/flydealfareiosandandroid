import 'dart:convert';
import 'package:fly_deal_fare/models/Country.dart';
import 'package:fly_deal_fare/models/output.dart';
import 'package:http/http.dart' as http;

class UserApiService {
  static Future<List<Output>> getsuggestionairport(String queryy) async {
    final url = Uri.parse("https://flydealfare.com/API/airport/list/");
    final response = await http.get(url);
    final responsdata = json.decode(response.body);
    if (response.statusCode == 200) {
      final List users = responsdata['output'];
      return users.map((json) => Output.fromJson(json)).where((users) {
        final namelower = users.name!.toLowerCase();
        final codelower = users.code!.toLowerCase();
        final query = queryy.toLowerCase();
        return codelower.startsWith(query) || namelower.startsWith(query);
      }).toList();
    } else {
      throw Exception();
    }
  }

  static Future<List<Country>> getCountriesList(String queryy) async {
    final url = Uri.parse("https://flydealfare.com/API/country/list/");
    final response = await http.get(url);
    final responsdata = json.decode(response.body);
    if (response.statusCode == 200) {
      final List users = responsdata['output'];
      return users.map((json) => Country.fromJson(json)).where((users) {
        final namelower = users.name!.toLowerCase();
        final query = queryy.toLowerCase();
        return namelower.startsWith(query);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
