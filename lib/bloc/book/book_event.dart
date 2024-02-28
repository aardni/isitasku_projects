part of 'book_bloc.dart';

@immutable
sealed class BookEvent {}

class GetBookEvent extends BookEvent {}
