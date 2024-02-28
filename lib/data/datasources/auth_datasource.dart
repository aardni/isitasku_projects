import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:isitasku_project/data/models/request/login_request_model.dart';
import 'package:isitasku_project/data/models/response/login_response_model.dart';

class AuthDatasource {
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel model) async {
    final response = await http.post(
        Uri.parse('https://isitasku-backend.onrender.com/api/siswa/login'),
        body: model.toJson(),
        headers: {"Content-Type": "application/json"});

    if (response.statusCode < 300) {
      return Right(LoginResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal untuk login");
    }
  }
}
