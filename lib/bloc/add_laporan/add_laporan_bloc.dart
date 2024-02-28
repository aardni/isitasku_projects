// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:isitasku_project/data/datasources/laporan_datasource.dart';
import 'package:isitasku_project/data/models/request/laporan_request_model.dart';
import 'package:isitasku_project/data/models/response/laporan_response_model.dart';

part 'add_laporan_event.dart';
part 'add_laporan_state.dart';

class AddLaporanBloc extends Bloc<AddLaporanEvent, AddLaporanState> {
  final LaporanDatasource datasource;
  AddLaporanBloc(
    this.datasource,
  ) : super(AddLaporanInitial()) {
    on<AddingLaporanEvent>((event, emit) async {
      emit(AddLaporanLoading());
      final result = await datasource.addLaporan(event.model);
      result.fold((l) => emit(AddLaporanError(l)), (r) {
        emit(AddLaporanLoaded(data: r));
      });
    });
  }
}
