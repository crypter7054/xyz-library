import 'package:http/http.dart' as http;
import 'membermodel.dart';

Future<List> fetchMembers() async {
  Uri url = Uri.parse("https://xyzlibrary.desainweb4c2.com/member.php");
  final response = await http.get(url);
  return memberFromJson(response.body);
}