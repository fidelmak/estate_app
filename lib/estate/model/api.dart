import 'dart:convert';
import 'package:http/http.dart' as http;

Future getProperty() async {
  final String url = 'https://zillow-com1.p.rapidapi.com/property';
  final String zpid = '2080998890';
  final String apiKey = 'edb9cece62mshc27c68ea813e867p1d0dcejsn1ff2f487e7c8';
  final String apiHost = 'zillow-com1.p.rapidapi.com';

  final Map<String, String> headers = {
    'X-RapidAPI-Key': apiKey,
    'X-RapidAPI-Host': apiHost,
  };

  final Map<String, String> queryParams = {
    'zpid': zpid,
  };

  final Uri uri = Uri.parse(url).replace(queryParameters: queryParams);

  try {
    final response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}
