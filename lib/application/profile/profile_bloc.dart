import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:jini/domain/auth/auth_failure.dart';
import 'package:jini/domain/auth/i_auth_facade.dart';
import 'package:jini/domain/auth/j_user.dart';
import 'package:jini/domain/auth/value_objects.dart';
import 'package:jini/domain/core/blood_group.dart';
import 'package:jini/domain/core/gender.dart';
import 'package:jini/domain/core/user_type.dart';
import 'package:jini/domain/location/i_location_facade.dart';
import 'package:jini/domain/media/i_media_facade.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._authFacade, this._mediaFacade, this._locationFacade)
      : super(ProfileState.initial()) {
    on<_ProfileEditPressed>((event, emit) => _editPressed(event, emit));
    on<_Initialized>((event, emit) => _initialized(event, emit));
    on<_NameChanged>((event, emit) => _nameChanged(event, emit));
    on<_EmailChanged>((event, emit) => _emailChanged(event, emit));
    on<_DateOfBirthChanged>((event, emit) => _dobChanged(event, emit));
    on<_PhoneChanged>((event, emit) => _phoneChanged(event, emit));
    on<_BloodGroupChanged>((event, emit) => _bloodGroupChanged(event, emit));
    on<_GenderChanged>((event, emit) => _genderChanged(event, emit));
    on<_AgeChanged>((event, emit) => _ageChanged(event, emit));
    on<_HeightChanged>((event, emit) => _heightChanged(event, emit));
    on<_WeightChanged>((event, emit) => _weightChanged(event, emit));
    on<_UserTypeChanged>((event, emit) => _userTypeChanged(event, emit));
    on<_AvatarChanged>((event, emit) => _avatarChanged(event, emit));
    on<_InitChanged>((event, emit) => _initChanged(event, emit));
    on<_ProfileUpdated>((event, emit) => _profileUpdated(event, emit));
    on<_UpdateStepIndex>((event, emit) => _updateStepIndex(event, emit));
    on<_StepForward>((event, emit) => _stepForward(event, emit));
    on<_StepBackward>((event, emit) => _stepBackward(event, emit));
    on<_LocationChanged>((event, emit) => _locationChanged(event, emit));
  }

  final IAuthFacade _authFacade;
  final IMediaFacade _mediaFacade;
  final ILocationFacade _locationFacade;

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

  _dobChanged(_DateOfBirthChanged e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        user: state.user.copyWith(dob: IDateOfBirth(e.dob, e.userType)),
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
    Either<AuthFailure, Unit> failureOrSuccess;

    final _file = await _mediaFacade.getImage(e.source ?? ImageSource.gallery);

    emit(state.copyWith(avatarFile: _file));

    if (_file != null) {
      _mediaFacade.upload(_file.path);

      final _download = await _mediaFacade.download();

      emit(_download.fold(
        (l) => state,
        (r) => state.copyWith(
          user: state.user.copyWith(avatar: r),
        ),
      ));

      failureOrSuccess = await _authFacade.updateUser(state.user);

      emit(state.copyWith(
        avatarFile: null,
        isSaving: false,
        saveOption: optionOf(failureOrSuccess),
      ));
    } else {
      emit(state);
    }
  }

  _initChanged(_InitChanged e, Emitter<ProfileState> emit) async {
    Either<AuthFailure, Unit> failureOrSuccess;

    emit(state.copyWith(
      user: state.user.copyWith(initEdit: e.initEdit),
      isSaving: true,
      saveOption: none(),
    ));

    failureOrSuccess = await _authFacade.updateUser(state.user);

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveOption: optionOf(failureOrSuccess),
    ));
  }

  _editPressed(_ProfileEditPressed e, Emitter<ProfileState> emit) async {
    final _userOption = await _authFacade.getUser();
    if (e.value == false) {
      emit(state.copyWith(isEditing: e.value));
    }

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
      saveOption: none(),
    ));

    failureOrSuccess = await _authFacade.updateUser(state.user);

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveOption: optionOf(failureOrSuccess),
    ));
  }

  _stepForward(_StepForward e, Emitter<ProfileState> emit) async {
    int _index = state.activeStepIndex;
    if (_index < 5) {
      emit(
        state.copyWith(
          activeStepIndex: _index + 1,
        ),
      );
    }
  }

  _stepBackward(_StepBackward e, Emitter<ProfileState> emit) async {
    int _index = state.activeStepIndex;

    if (_index > 0) {
      emit(
        state.copyWith(
          activeStepIndex: _index -= 1,
        ),
      );
    } else {
      return;
    }
  }

  _updateStepIndex(_UpdateStepIndex e, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(
        activeStepIndex: e.step,
      ),
    );
  }

  _locationChanged(_LocationChanged e, Emitter<ProfileState> emit) async {
    Either<AuthFailure, Unit> failureOrSuccess;
    await _locationFacade.requestPermission();
    final _geoEither = await _locationFacade.getLocation();

    final _placeEither = await _locationFacade.getCityCountry(e.geo);

    _geoEither.fold(
      (l) => state,
      (geo) {
        emit(
          state.copyWith(user: state.user.copyWith(location: ILocation(geo))),
        );
      },
    );

    _placeEither.fold(
      (l) => state,
      (place) {
        emit(state.copyWith(user: state.user.copyWith(city: place)));
      },
    );

    print(state.user.location);

    failureOrSuccess = await _authFacade.updateUser(state.user);

    emit(state.copyWith(
      isSaving: false,
      showErrorMessages: true,
      saveOption: optionOf(failureOrSuccess),
    ));
  }
}
