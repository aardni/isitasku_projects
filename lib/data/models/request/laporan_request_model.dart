import 'package:meta/meta.dart';
import 'dart:convert';

class LaporanRequestModel {
  final String desc;
  final int idSiswa;
  final List<int> kategori;

  LaporanRequestModel({
    required this.desc,
    required this.idSiswa,
    required this.kategori,
  });

  factory LaporanRequestModel.fromJson(String str) =>
      LaporanRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LaporanRequestModel.fromMap(Map<String, dynamic> json) =>
      LaporanRequestModel(
        desc: json["desc"],
        idSiswa: json["id_siswa"],
        kategori: List<int>.from(json["kategori"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "desc": desc,
        "id_siswa": idSiswa,
        "kategori": List<dynamic>.from(kategori.map((x) => x)),
      };
}
