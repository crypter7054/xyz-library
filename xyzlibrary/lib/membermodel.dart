import 'dart:convert';

List<Members> memberFromJson(String str) =>
    List<Members>.from(json.decode(str).map((x) => Members.fromJson(x)));

String membersToJson(List<Members> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Members {
  Members({
    required this.id,
    required this.nama_lengkap,
    required this.jenis_kelamin,
    required this.alamat,
    required this.no_telp,
    required this.email,

  });

  String id;
  String nama_lengkap;
  String jenis_kelamin;
  String alamat;
  String no_telp;
  String email;

  factory Members.fromJson(Map<String, dynamic> json) => Members(
    id: json["id"],
    nama_lengkap: json["nama_lengkap"],
    jenis_kelamin: json["jenis_kelamin"],
    alamat: json["alamat"],
    no_telp: json["no_telp"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_lengkap": nama_lengkap,
        "jenis_kelamin": jenis_kelamin,
        "alamat": alamat,
        "no_telp": no_telp,
        "email": email,
      };
}