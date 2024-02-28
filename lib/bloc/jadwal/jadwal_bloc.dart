// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:isitasku_project/data/models/response/jadwal_response_model.dart';
import 'package:meta/meta.dart';

import 'package:isitasku_project/data/datasources/book_datasource.dart';
import 'package:isitasku_project/data/datasources/jadwal_datasource.dart';
import 'package:isitasku_project/data/models/response/book_response_model.dart';

part 'jadwal_event.dart';
part 'jadwal_state.dart';

class JadwalBloc extends Bloc<JadwalEvent, JadwalState> {
  final JadwalDatasource datasource;
  JadwalBloc(
    this.datasource,
  ) : super(JadwalInitial()) {
    on<GetJadwalEvent>((event, emit) async {
      emit(JadwalLoading());
      final result = await datasource.getAllJadwal();
      result.fold((l) => emit(JadwalError(l)), (r) {
        emit(JadwalLoaded(data: r));
      });
    });
  }
}
