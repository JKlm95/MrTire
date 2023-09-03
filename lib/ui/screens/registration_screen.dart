import 'package:first_project/ui/custom_scaffold.dart';
import 'package:first_project/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationScreen extends StatefulWidget{
  const RegistrationScreen({super.key});

  @override

  State<StatefulWidget> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isEmailNotEmpty = false;

  void _updateEmailNotEmpty(String text) {
    setState(() {
      isEmailNotEmpty = text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: CustomScaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(15),
                  child: Image.asset('assets/tire.png', height: 200.r, width: 200.r,),
                ),
                const Expanded(child: (SizedBox())),
                Container(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  alignment: Alignment.center,
                  height: 100.h,
                  width: 300.w,
                  child:
                  Text('Rejestracja',
                      style: TextStyle(
                          fontSize: 45.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                const Expanded(child: (SizedBox())),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 60,
                  width: 300.w,
                  child: TextField(
                    onChanged: _updateEmailNotEmpty,
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: 'adres e-mail',
                        filled: true,
                        fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                    ),
                  ),
                ),
                const Expanded(child: (SizedBox())),
                AnimatedOpacity(
                  opacity: isEmailNotEmpty ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 50,
                    width: 300.w,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'hasło',
                          filled: true,
                          fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                      ),
                    ),
                  ),
                ),
                const Expanded(child: (SizedBox())),
                AnimatedOpacity(
                  opacity: isEmailNotEmpty ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 1000),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    height: 50,
                    width: 300.w,
                    child: TextField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'powtórz hasło',
                          filled: true,
                          fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                      ),
                    ),
                  ),
                ),
                const Expanded(child: (SizedBox())),
                Row(
                  children: [
                    const Expanded(child: (SizedBox())),
                    Container(
                      height: 50.h,
                      width: 150.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromRGBO(165, 168, 170, 0.8),
                          ),
                        ),
                        onPressed: (){print('Zarejestruj');},
                        child: Text('Zarejestruj',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),),
                      ),
                    ),
                    const Expanded(child: (SizedBox())),
                    Container(
                      height: 50.h,
                      width: 150.w,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(165, 168, 170, 0.8),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: Text('Powróć do logowania',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),)),
                    ),
                    const Expanded(child: (SizedBox())),
                  ],
                ),
                const Expanded(child: (SizedBox())),
              ],
            ),
          )
      ),
    );
  }
}

