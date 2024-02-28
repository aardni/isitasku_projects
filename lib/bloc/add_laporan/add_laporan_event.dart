part of 'add_laporan_bloc.dart';

@immutable
sealed class AddLaporanEvent {}

class AddingLaporanEvent extends AddLaporanEvent {
  final LaporanRequestModel model;

  AddingLaporanEvent({required this.model});
}
