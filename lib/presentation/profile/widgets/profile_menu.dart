import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';
import 'package:jini/application/profile/profile_bloc.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ProfileBloc>(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      buildWhen: (p, c) => p.isEditing != c.isEditing,
      builder: (context, state) {
        bool isEditing = bloc.state.isEditing;

        return PopupMenuButton(
          icon: Icon(Icons.more_vert, color: Colors.white),
          itemBuilder: (context) => [
            PopupMenuItem<int>(
              value: 0,
              child: Text(isEditing ? 'Save Changes' : "Edit Account"),
            ),
            PopupMenuItem<int>(value: 1, child: Text("Sign out")),
          ],
          onSelected: (value) {
            switch (value) {
              case 0:
                bloc.add(ProfileEvent.editPressed(!isEditing));
                bloc.add(ProfileEvent.profileUpdated());
                break;
              case 1:
                authBloc.add(const AuthEvent.authSignedOut());
                break;
              default:
                return null;
            }
          },
        );
      },
    );
  }
}
