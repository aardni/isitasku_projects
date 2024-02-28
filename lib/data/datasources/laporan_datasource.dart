import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:isitasku_project/data/models/request/laporan_request_model.dart';
import 'package:isitasku_project/data/models/response/laporan_response_model.dart';

class LaporanDatasource {
  Future<Either<String, List<LaporanResponseModel>>> getAllLaporan() async {
    final response = await http
        .get(Uri.parse('https://isitasku-backend.onrender.com/api/laporan'));
    if (response.statusCode == 200) {
      return Right(List<LaporanResponseModel>.from(jsonDecode(response.body)
          .map((x) => LaporanResponseModel.fromMap(x))));
    } else {
      return const Left('get laporan error');
    }
  }

  Future<Either<String, LaporanResponseModel>> addLaporan(
      LaporanRequestModel model) async {
    final response = await http.post(
        Uri.parse('https://isitasku-backend.onrender.com/api/laporan'),
        body: model.toJson(),
        headers: {'Content-Type': 'application/json'});

    if (response.statusCode == 201) {
      return Right(LaporanResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal menambahkan product");
    }
  }
}
