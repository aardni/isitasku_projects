import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:isitasku_project/data/models/response/book_response_model.dart';
import 'package:http/http.dart' as http;

class BookDatasource {
  Future<Either<String, List<BookResponseModel>>> getAllBook() async {
    final response = await http.get(
        Uri.parse('https://isitasku-backend.onrender.com/api/buku/kelas/11'));
    if (response.statusCode == 200) {
      return Right(List<BookResponseModel>.from(
          jsonDecode(response.body).map((x) => BookResponseModel.fromMap(x))));
    } else {
      return const Left('Gagal mendapatkan buku');
    }
  }
}
