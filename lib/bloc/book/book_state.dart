part of 'book_bloc.dart';

@immutable
sealed class BookState {}

final class BookInitial extends BookState {}

final class BookLoading extends BookState {}

final class BookLoaded extends BookState {
  final List<BookResponseModel> data;

  BookLoaded({required this.data});
}

final class BookError extends BookState {
  final String message;

  BookError(this.message);
}
