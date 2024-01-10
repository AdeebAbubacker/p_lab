import 'package:flutter/material.dart';
import 'package:panakj_app/ui/screens/auth/login_screen.dart';
import 'package:panakj_app/ui/screens/student/screens/home_screen/students_home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initialChecks(); 
    super.initState();
  }

  initialChecks() async {
    await Future.delayed(const Duration(seconds: 3));
    var prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('loginState');

    if (accessToken != null) {
      // ignore: use_build_context_synchronously
      await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const StudentsHomeScreen(),
          ));
    } else {
      // User is not logged in, navigate to LoginScreen
      // ignore: use_build_context_synchronously
      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo400.png',
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

