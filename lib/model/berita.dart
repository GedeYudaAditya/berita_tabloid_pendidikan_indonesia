class Berita {
  Berita({
    required this.id,
    required this.kecamatanId,
    required this.slug,
    required this.judul,
    required this.isi,
    required this.gambar,
    required this.status,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  int kecamatanId;
  String slug;
  String judul;
  String isi;
  String gambar;
  String status;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Berita.fromJson(Map<String, dynamic> json) => Berita(
        id: json["id"],
        kecamatanId: json["kecamatan_id"],
        slug: json["slug"],
        judul: json["judul"],
        isi: json["isi"],
        gambar: json["gambar"],
        status: json["status"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kecamatan_id": kecamatanId,
        "slug": slug,
        "judul": judul,
        "isi": isi,
        "gambar": gambar,
        "status": status,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
