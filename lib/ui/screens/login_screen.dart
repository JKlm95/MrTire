import 'package:first_project/ui/custom_scaffold.dart';
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
    return CustomScaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: AlignmentDirectional.centerEnd,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(15),
              child: Image.asset('assets/tire.png'),
            ),
            Expanded(child: (SizedBox())),
            Container(
              alignment: Alignment.center,
              height: 100.h,
              width: 300.w,
              //color: Colors.green,
              child:
              Text('Logowanie',
                  style: TextStyle(fontSize: 45.sp, fontWeight: FontWeight.bold)),
            ),
            Expanded(child: (SizedBox())),
            Container(
              height: 50,
              width: 300.w,
              //color: Colors.blue,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'adres e-mail',
                  filled: true,
                  fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                ),
              ),
            ),
            Expanded(child: (SizedBox())),
            Container(
              height: 50,
              width: 300.w,
              //color: Colors.pink,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'hasło',
                    filled: true,
                    fillColor: Color.fromRGBO(165, 168, 170, 0.8)
                ),
              ),
            ),
            Expanded(child: (SizedBox())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: (SizedBox())),
                Container(
                  height: 50.h,
                  width: 150.w,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(165, 168, 170, 0.8),
                      ),
                    ),
                    onPressed: () {print('Zaloguj');},
                    child: Text('Zaloguj'),
                  ),
                ),
                Expanded(child: (SizedBox())),
                Container(
                  height: 50.h,
                  width: 150.w,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(165, 168, 170, 0.8),
                      ),
                    ),
                    onPressed: (){print('Zarejestruj');},
                    child: Text('Przejdź do rejestracji'),
                  ),
                ),
                Expanded(child: (SizedBox())),
              ],
            ),
            Expanded(child: (SizedBox())),
          ],
        ),
      )
    );
  }
}
