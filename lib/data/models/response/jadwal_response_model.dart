import 'dart:convert';

class JadwalResponseModel {
  int? id;
  String? hari;
  int? kelas;
  String? jurusan;
  String? giliran;
  String? indeks;
  List<Jadwal>? jadwal;
  DateTime? createdAt;
  DateTime? updatedAt;

  JadwalResponseModel({
    this.id,
    this.hari,
    this.kelas,
    this.jurusan,
    this.giliran,
    this.indeks,
    this.jadwal,
    this.createdAt,
    this.updatedAt,
  });

  factory JadwalResponseModel.fromJson(String str) =>
      JadwalResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory JadwalResponseModel.fromMap(Map<String, dynamic> json) =>
      JadwalResponseModel(
        id: json["id"],
        hari: json["hari"],
        kelas: json["kelas"],
        jurusan: json["jurusan"],
        giliran: json["giliran"],
        indeks: json["indeks"],
        jadwal: json["jadwal"] == null
            ? []
            : List<Jadwal>.from(json["jadwal"]!.map((x) => Jadwal.fromMap(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "hari": hari,
        "kelas": kelas,
        "jurusan": jurusan,
        "giliran": giliran,
        "indeks": indeks,
        "jadwal": jadwal == null
            ? []
            : List<dynamic>.from(jadwal!.map((x) => x.toMap())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class Jadwal {
  String? jam;
  String? mapel;

  Jadwal({
    this.jam,
    this.mapel,
  });

  factory Jadwal.fromJson(String str) => Jadwal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Jadwal.fromMap(Map<String, dynamic> json) => Jadwal(
        jam: json["jam"],
        mapel: json["mapel"],
      );

  Map<String, dynamic> toMap() => {
        "jam": jam,
        "mapel": mapel,
      };
}
