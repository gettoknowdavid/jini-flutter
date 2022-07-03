import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jini/application/auth/auth_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, this.title = 'Jini App'}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title.toUpperCase(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              onPressed: () => bloc.add(AuthEvent.authSignedOut()),
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
