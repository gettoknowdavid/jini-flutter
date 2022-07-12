import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/value_objects.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial()) {
    on<_ProfileEditPressed>((event, emit) => _editPressed(event, emit));
  }

  _editPressed(_ProfileEditPressed e, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isEditing: e.value));
  }
}
