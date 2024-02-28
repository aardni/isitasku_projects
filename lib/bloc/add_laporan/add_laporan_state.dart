part of 'add_laporan_bloc.dart';

@immutable
sealed class AddLaporanState {}

final class AddLaporanInitial extends AddLaporanState {}

final class AddLaporanLoading extends AddLaporanState {}

final class AddLaporanLoaded extends AddLaporanState {
  final LaporanResponseModel data;

  AddLaporanLoaded({required this.data});
}

final class AddLaporanError extends AddLaporanState {
  final String message;

  AddLaporanError(this.message);
}
