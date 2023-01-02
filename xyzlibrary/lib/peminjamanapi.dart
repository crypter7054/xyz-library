import 'package:http/http.dart' as http;
import 'peminjamanmodel.dart';

Future<List> fetchPeminjaman() async {
  Uri url = Uri.parse("https://xyzlibrary.desainweb4c2.com/peminjaman.php");
  final response = await http.get(url);
  return peminjamanFromJson(response.body);
}