part of 'laporan_bloc.dart';

@immutable
sealed class LaporanState {}

final class LaporanInitial extends LaporanState {}

final class LaporanLoading extends LaporanState {}

final class LaporanLoaded extends LaporanState {
  final List<LaporanResponseModel> data;

  LaporanLoaded({required this.data});
}

final class LaporanLoadeds extends LaporanState {
  final LaporanResponseModel data;

  LaporanLoadeds({required this.data});
}

final class LaporanError extends LaporanState {
  final String message;

  LaporanError(this.message);
}
