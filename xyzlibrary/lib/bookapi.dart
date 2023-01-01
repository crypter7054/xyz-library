import 'package:http/http.dart' as http;
import 'bookmodel.dart';

Future<List> fetchBooks() async {
  Uri url = Uri.parse("https://xyzlibrary.desainweb4c2.com/buku.php");
  final response = await http.get(url);
  return bookFromJson(response.body);
}