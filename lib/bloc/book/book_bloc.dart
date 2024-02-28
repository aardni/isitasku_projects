// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:isitasku_project/data/datasources/book_datasource.dart';
import 'package:isitasku_project/data/models/response/book_response_model.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final BookDatasource datasource;
  BookBloc(
    this.datasource,
  ) : super(BookInitial()) {
    on<GetBookEvent>((event, emit) async {
      emit(BookLoading());
      final result = await datasource.getAllBook();
      result.fold((l) => emit(BookError(l)), (r) {
        emit(BookLoaded(data: r));
      });
    });
  }
}
