import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isitasku_project/bloc/login/login_bloc.dart';
import 'package:isitasku_project/data/datasources/local_datasource.dart';
import 'package:isitasku_project/data/models/request/login_request_model.dart';
import 'package:isitasku_project/presentation/screen/homepage.dart';
import 'package:isitasku_project/presentation/widget/navbarwidget.dart';
import 'package:isitasku_project/presentation/widget/textfieldauth.dart';
import 'package:isitasku_project/presentation/widget/textfieldpass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? nisController;
  TextEditingController? passwordController;

  @override
  void initState() {
    nisController = TextEditingController();
    passwordController = TextEditingController();
    checkAuth();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    nisController!.dispose();
    passwordController!.dispose();
  }

  void checkAuth() async {
    final auth = await LocalDatasource().getToken();
    // if (auth.isNotEmpty) {
    //   Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: ((context) => const NavBarWidget())));
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 80,
                ),
                Image.asset(
                  'assets/images/burung.png',
                  height: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    color: Color(0xfffafafa),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Text(
                  "Masuk ke akun Anda",
                  style: TextStyle(
                    color: Color(0xfffafafa),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextFieldAuth(
                  controller: nisController,
                  hintText: "NIS",
                  textInputType: TextInputType.number,
                  // textInputType: TextInputType.name,
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFieldPass(
                  controller: passwordController,
                  hintText: "Password",
                ),
                const SizedBox(
                  height: 12,
                ),
                const SizedBox(
                  height: 40,
                ),
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    // TODO: implement listener
                    if (state is LoginError) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.red,
                      ));
                    }
                    if (state is LoginLoaded) {
                      LocalDatasource().saveToken(state.model.accessToken);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Login berhasil"),
                        backgroundColor: Colors.orange,
                      ));
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NavBarWidget()));
                    }
                  },
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return SizedBox(
                      height: 54,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<LoginBloc>().add(DoLoginEvent(
                                  model: LoginRequestModel(
                                nis: nisController!.text,
                                password: passwordController!.text,
                              )));
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF7560EE),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
