// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:isitasku_project/data/models/request/laporan_request_model.dart';
import 'package:meta/meta.dart';

import 'package:isitasku_project/data/datasources/laporan_datasource.dart';
import 'package:isitasku_project/data/models/response/laporan_response_model.dart';

part 'laporan_event.dart';
part 'laporan_state.dart';

class LaporanBloc extends Bloc<LaporanEvent, LaporanState> {
  final LaporanDatasource datasource;
  LaporanBloc(
    this.datasource,
  ) : super(LaporanInitial()) {
    on<GetLaporanEvent>((event, emit) async {
      emit(LaporanLoading());
      final result = await datasource.getAllLaporan();
      result.fold((l) => emit(LaporanError(l)), (r) {
        emit(LaporanLoaded(data: r));
      });
    });
  }
}
