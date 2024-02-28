import 'package:bloc/bloc.dart';
import 'package:isitasku_project/data/datasources/auth_datasource.dart';
import 'package:isitasku_project/data/models/request/login_request_model.dart';
import 'package:isitasku_project/data/models/response/login_response_model.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthDatasource datasource;
  LoginBloc(
    this.datasource,
  ) : super(LoginInitial()) {
    on<DoLoginEvent>((event, emit) async {
      emit(LoginLoading());
      final result = await datasource.login(event.model);
      result.fold((l) => emit(LoginError(l)), (r) => emit(LoginLoaded(r)));
    });
  }
}
