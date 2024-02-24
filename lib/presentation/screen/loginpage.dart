import 'package:flutter/material.dart';
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

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    nisController!.dispose();
    passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
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
              SizedBox(
                  height: 54,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
