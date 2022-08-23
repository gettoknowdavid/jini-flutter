import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jini/domain/auth/i_auth_facade.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/value_object.dart';
import 'package:jini/domain/request/i_request_facade.dart';
import 'package:jini/domain/request/request_failure.dart';

part 'create_request_event.dart';
part 'create_request_state.dart';
part 'create_request_bloc.freezed.dart';

class CreateRequestBloc extends Bloc<CreateRequestEvent, CreateRequestState> {
  CreateRequestBloc(this._authFacade, this._requestFacade)
      : super(CreateRequestState.initial()) {
    on<CreateRequestEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final IAuthFacade _authFacade;
  final IRequestFacade _requestFacade;

  _bloodGroupSelected(
    _BloodGroupSelected e,
    Emitter<CreateRequestState> emit,
  ) async {
    emit(
      state.copyWith(
        bloodGroup: IBloodGroup(e.bloodGroup),
      ),
    );
  }

  _createPressed(_CreatePressed e, Emitter<CreateRequestState> emit) async {
    Either<RequestFailure, Unit> failureOrSuccess;

    emit(state.copyWith(
      isCreating: true,
      createOption: none(),
    ));
  }
}
