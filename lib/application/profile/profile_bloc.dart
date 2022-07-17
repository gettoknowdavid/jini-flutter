import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/auth_failure.dart';
import 'package:jini/domain/auth/i_auth_facade.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/domain/media/i_media_facade.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._authFacade,
    this._mediaFacade,
  ) : super(ProfileState.initial()) {
    on<_ProfileEditPressed>((event, emit) => _editPressed(event, emit));
    on<_Initialized>((event, emit) => _initialized(event, emit));
    on<_NameChanged>((event, emit) => _nameChanged(event, emit));
    on<_EmailChanged>((event, emit) => _emailChanged(event, emit));
    on<_PhoneChanged>((event, emit) => _phoneChanged(event, emit));
    on<_BloodGroupChanged>((event, emit) => _bloodGroupChanged(event, emit));
    on<_GenderChanged>((event, emit) => _genderChanged(event, emit));
    on<_AgeChanged>((event, emit) => _ageChanged(event, emit));
    on<_HeightChanged>((event, emit) => _heightChanged(event, emit));
    on<_WeightChanged>((event, emit) => _weightChanged(event, emit));
    on<_UserTypeChanged>((event, emit) => _userTypeChanged(event, emit));
    on<_AvatarChanged>((event, emit) => _avatarChanged(event, emit));
    on<_ProfileUpdated>((event, emit) => _profileUpdated(event, emit));
  }

  final IAuthFacade _authFacade;
  final IMediaFacade _mediaFacade;

  _nameChanged(_NameChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(name: IName(e.name)),
      ),
    );
  }

  _emailChanged(_EmailChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(email: IEmailAddress(e.email)),
      ),
    );
  }

  _phoneChanged(_PhoneChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(phone: IPhone(e.phone)),
      ),
    );
  }

  _bloodGroupChanged(_BloodGroupChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(bloodGroup: IBloodGroup(e.bloodGroup)),
      ),
    );
  }

  _genderChanged(_GenderChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(gender: IGender(e.gender)),
      ),
    );
  }

  _userTypeChanged(_UserTypeChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(userType: IUserType(e.userType)),
      ),
    );
  }

  _ageChanged(_AgeChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(age: IAge(e.age, e.userType)),
      ),
    );
  }

  _heightChanged(_HeightChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(height: IHeight(e.height)),
      ),
    );
  }

  _weightChanged(_WeightChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(weight: IWeight(e.weight, e.userType)),
      ),
    );
  }

  _avatarChanged(_AvatarChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(avatar: IAvatar(e.avatar)),
      ),
    );
  }

  _editPressed(_ProfileEditPressed e, Emitter<ProfileState> emit) async {
    final _userOption = await _authFacade.getUser();
    emit(
      _userOption.fold(
        () => state,
        (initialJUser) {
          return state.copyWith(
            user: initialJUser!,
            isEditing: e.value,
          );
        },
      ),
    );
  }

  _initialized(_Initialized e, Emitter<ProfileState> emit) async {
    final _userOption = await _authFacade.getUser();
    emit(
      _userOption.fold(
        () => state,
        (initialJUser) => state.copyWith(
          user: initialJUser!,
          isEditing: false,
        ),
      ),
    );
  }

  _profileUpdated(_ProfileUpdated e, Emitter<ProfileState> emit) async {
    Either<AuthFailure, Unit> failureOrSuccess;

    emit(state.copyWith(
      isSaving: true,
      saveFailureOrSuccessOption: none(),
    ));

    failureOrSuccess = await _authFacade.updateUser(state.user);

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveFailureOrSuccessOption: optionOf(failureOrSuccess),
    ));
  }
}
