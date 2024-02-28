import 'dart:convert';

class BookResponseModel {
  int? id;
  String? judul;
  int? kelas;
  String? mapel;

  BookResponseModel({
    this.id,
    this.judul,
    this.kelas,
    this.mapel,
  });

  factory BookResponseModel.fromJson(String str) =>
      BookResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BookResponseModel.fromMap(Map<String, dynamic> json) =>
      BookResponseModel(
        id: json["id"],
        judul: json["judul"],
        kelas: json["kelas"],
        mapel: json["mapel"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "judul": judul,
        "kelas": kelas,
        "mapel": mapel,
      };
}
