import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:panakj_app/core/model/failure/mainfailure.dart';
import 'package:panakj_app/ui/screens/student/screens/home_screen/students_home_screen.dart';
import 'package:panakj_app/ui/view_model/auth/auth_bloc.dart';
import 'package:jumping_dot/jumping_dot.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  FocusNode namefocusNode = FocusNode();
  FocusNode passwordfocusNode = FocusNode();
  bool showDots = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.successorFailure.fold(
              () {},
              (either) {
                either.fold(
                  (final failure) {
                    setState(() {
                      showDots = false;
                    });
                    if (failure is ClientFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Invalid email or password'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  (success) {
                    setState(() {
                      showDots = false;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StudentsHomeScreen(),
                      ),
                    );
                    // ignore: avoid_print
                    print(success.toString());
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                if (namefocusNode.hasFocus || passwordfocusNode.hasFocus) {
                  namefocusNode.unfocus();
                  passwordfocusNode.unfocus();
                }
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    SizedBox(
                      width: 260,
                      height: 240,
                      child: Image.asset('assets/login_img.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        focusNode: namefocusNode,
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: 'Enter email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        obscureText: _obscureText,
                        focusNode: passwordfocusNode,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Enter Password',
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            showDots = true;
                          });
                          BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.mylogin(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 76, 81, 175),
                        ),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(
                      height: 190,
                    ),
                    if (showDots)
                      Container(
                        width: 120,
                        height: 40,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(137, 212, 210, 210),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: JumpingDots(
                          color: const Color.fromARGB(255, 129, 106, 205),
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
