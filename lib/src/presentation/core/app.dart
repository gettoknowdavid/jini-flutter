import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jini/common/app_colors.dart';
import 'package:jini/common/jini_routes.dart';
import 'package:jini/src/presentation/auth/sign_in/sign_in_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jini/src/presentation/auth/sign_up/sign_up_page.dart';

class JiniApp extends StatelessWidget {
  const JiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark();
    return ScreenUtilInit(
      designSize: const Size(393, 830),
      minTextAdapt: true,
      child: const SignInPage(),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Jini Donation',
          home: child,
          getPages: [
            GetPage(name: JiniRoutes.root, page: () => SignInPage()),
            GetPage(name: JiniRoutes.signUp, page: () => SignUpPage()),
          ],
          theme: theme.copyWith(
            primaryColor: AppColors.primary,
            canvasColor: AppColors.background,
            backgroundColor: AppColors.background,
            scaffoldBackgroundColor: AppColors.background,
            brightness: Brightness.dark,
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: AppColors.background,
            ),
            textTheme: theme.textTheme
                .copyWith()
                .apply(fontFamily: GoogleFonts.spaceGrotesk().fontFamily),
          ),
        );
      },
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
