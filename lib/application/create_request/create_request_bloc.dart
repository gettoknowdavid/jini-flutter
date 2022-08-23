import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/i_auth_facade.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/core/blood_group.dart';

part 'create_request_event.dart';
part 'create_request_state.dart';
part 'create_request_bloc.freezed.dart';

class CreateRequestBloc extends Bloc<CreateRequestEvent, CreateRequestState> {
  CreateRequestBloc(this._authFacade) : super(_Initial()) {
    on<CreateRequestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final IAuthFacade _authFacade;
}
