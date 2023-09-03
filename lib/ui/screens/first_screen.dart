import 'package:first_project/ui/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: SizedBox()),
                Container(
                  child: Image.asset('assets/tire.png', width: 200.w, height: 200.h,),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  child: Text('Welcome in \n Mr. Tire App', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.sp,),textAlign: TextAlign.center,)
                ),
                const Expanded(child: SizedBox()),
              ],
            )
        ),
    );
  }
}