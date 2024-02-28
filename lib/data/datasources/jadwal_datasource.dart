import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:isitasku_project/data/models/response/jadwal_response_model.dart';

class JadwalDatasource {
  Future<Either<String, JadwalResponseModel>> getJadwalbyDay() async {
    final response = await http.get(Uri.parse(
        'https://isitasku-backend.onrender.com/api/jadwal/11/sija/1'));
    if (response.statusCode == 200) {
      return Right(JadwalResponseModel.fromJson(jsonDecode(response.body)));
    } else {
      return const Left('get jadwal error');
    }
  }
}
