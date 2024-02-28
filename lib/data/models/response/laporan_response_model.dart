import 'dart:convert';

class LaporanResponseModel {
  int? id;
  String? desc;
  int? userId;
  List<Kategori>? kategori;
  DateTime? createdAt;
  DateTime? updatedAt;

  LaporanResponseModel({
    this.id,
    this.desc,
    this.userId,
    this.kategori,
    this.createdAt,
    this.updatedAt,
  });

  factory LaporanResponseModel.fromJson(String str) =>
      LaporanResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LaporanResponseModel.fromMap(Map<String, dynamic> json) =>
      LaporanResponseModel(
        id: json["id"],
        desc: json["desc"],
        userId: json["user_id"],
        kategori: json["kategori"] == null
            ? []
            : List<Kategori>.from(
                json["kategori"]!.map((x) => Kategori.fromMap(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "desc": desc,
        "user_id": userId,
        "kategori": kategori == null
            ? []
            : List<dynamic>.from(kategori!.map((x) => x.toMap())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Kategori {
  int? id;
  String? kategori;

  Kategori({
    this.id,
    this.kategori,
  });

  factory Kategori.fromJson(String str) => Kategori.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Kategori.fromMap(Map<String, dynamic> json) => Kategori(
        id: json["id"],
        kategori: json["kategori"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "kategori": kategori,
      };
}
