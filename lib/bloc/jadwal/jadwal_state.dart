part of 'jadwal_bloc.dart';

@immutable
sealed class JadwalState {}

final class JadwalInitial extends JadwalState {}

final class JadwalLoading extends JadwalState {}

final class JadwalLoaded extends JadwalState {
  final List<JadwalResponseModel> data;

  JadwalLoaded({required this.data});
}

final class JadwalError extends JadwalState {
  final String message;

  JadwalError(this.message);
}
