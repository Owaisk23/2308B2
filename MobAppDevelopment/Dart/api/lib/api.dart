import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  print("API Fetch in Dart Programming");

  final API = Uri.parse(
    'https://67d13a6e825945773eb37cfc.mockapi.io/dev/students',
  );

  http.get(API).then((response) {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body);
      // print(data);
      List<dynamic> studentsInfo = data;
      for (var student in studentsInfo) {
        print("Student Name: ${student['stdName']}");
        print("Student Avatar: ${student['stdAvatar']}");
        print("Student Country: ${student['stdCountry']}");
        print(
          "================================================================",
        );
      }
    }
  });

  // final Response = await HTTP.get(API);
  // print(Response.body);
}
