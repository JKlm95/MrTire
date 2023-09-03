import 'package:first_project/ui/custom_scaffold.dart';
import 'package:first_project/ui/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: CustomScaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                alignment: AlignmentDirectional.centerEnd,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/tire.png', height: 200.r, width: 200.r,),
              ),
              const Expanded(child: (SizedBox())),
              Container(
                alignment: Alignment.center,
                height: 100.h,
                width: 300.w,
                //color: Colors.green,
                child:
                Text('Logowanie',
                    style: TextStyle(
                        fontSize: 45.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ),
              Expanded(child: (SizedBox())),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                height: 50,
                width: 300.w,
                //color: Colors.blue,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'adres e-mail',
                    filled: true,
                    fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                  ),
                ),
              ),
              const Expanded(child: (SizedBox())),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                height: 50,
                width: 300.w,
                //color: Colors.pink,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'hasło',
                      filled: true,
                      fillColor: Color.fromRGBO(165, 168, 170, 0.8)
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
                      onPressed: () {print('Zaloguj');
                        },
                      child: Text('Zaloguj',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      ),
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
                            MaterialPageRoute(builder: (context) => RegistrationScreen())
                        );
                      },
                      child: Text('Przejdź do rejestracji',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      ),
                    ),
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
