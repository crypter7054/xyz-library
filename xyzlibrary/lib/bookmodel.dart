import 'dart:convert';

List<Books> bookFromJson(String str) =>
    List<Books>.from(json.decode(str).map((x) => Books.fromJson(x)));

String booksToJson(List<Books> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Books {
  Books({
    required this.isbn,
    required this.judul,
    required this.penulis,
    required this.penerbit,
    required this.tahun_terbit,
    required this.jumlah_buku,
    required this.kategori,

  });

  String isbn;
  String judul;
  String penulis;
  String penerbit;
  String tahun_terbit;
  String jumlah_buku;
  String kategori;

  factory Books.fromJson(Map<String, dynamic> json) => Books(
    isbn: json["isbn"],
    judul: json["judul"],
    penulis: json["penulis"],
    penerbit: json["penerbit"],
    tahun_terbit: json["tahun_terbit"],
    jumlah_buku: json["jumlah_buku"],
    kategori: json["kategori"],
  );

  Map<String, dynamic> toJson() => {
        "isbn": isbn,
        "judul": judul,
        "penulis": penulis,
        "penerbit": penerbit,
        "tahun_terbit": tahun_terbit,
        "jumlah_buku": jumlah_buku,
        "kategori": kategori,
      };
}