import 'dart:convert';

List<Peminjaman> peminjamanFromJson(String str) =>
    List<Peminjaman>.from(json.decode(str).map((x) => Peminjaman.fromJson(x)));

String peminjamansToJson(List<Peminjaman> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Peminjaman {
  Peminjaman({
    required this.id,
    required this.id_buku,
    required this.judul,
    required this.id_peminjam,
    required this.peminjam,
    required this.tanggal_peminjaman,
    required this.tanggal_pengembalian,
    required this.status,

  });

  String id;
  String id_buku;
  String judul;
  String id_peminjam;
  String peminjam;
  String tanggal_peminjaman;
  String tanggal_pengembalian;
  String status;

  factory Peminjaman.fromJson(Map<String, dynamic> json) => Peminjaman(
    id: json["id"],
    id_buku: json["id_buku"],
    judul: json["judul"],
    id_peminjam: json["id_peminjam"],
    peminjam: json["peminjam"],
    tanggal_peminjaman: json["tanggal_peminjaman"],
    tanggal_pengembalian: json["tanggal_pengembalian"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_buku": id_buku,
        "judul": judul,
        "id_peminjam": id_peminjam,
        "peminjam": peminjam,
        "tanggal_peminjaman": tanggal_peminjaman,
        "tanggal_pengembalian": tanggal_pengembalian,
        "status": status,
      };
}