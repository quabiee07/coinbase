import 'dart:async';

import 'package:calorie_tracker/pages/login_screen.dart';
import 'package:calorie_tracker/res/colors.dart';
import 'package:calorie_tracker/res/font.dart';
import 'package:calorie_tracker/res/style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 5), _goNext);
  }

  _goNext() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (builder) => const Splash()));
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondaryColor,
      body: Center(
          child: Text(
        'coinbase',
        style: getSemiBoldStyle(
            color: ColorManager.whiteTextColor, fontSize: FontSize.s30),
      )),
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.secondaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              signInButton(context),
            ],
          ),
          const Spacer(),
          const SizedBox(height: 15),
          Text(
            'coinbase',
            style: getSemiBoldStyle(
                color: ColorManager.whiteTextColor, fontSize: FontSize.s30),
          ),
          const Spacer(),
          startButton(context)
        ],
      ),
    );
  }

  Widget signInButton(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (builder) => const LoginScreen()));
        },
        child: Container(
          height: 50,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(color: Colors.white),
              color: Colors.transparent
          ),
          child: Center(child: Text('Sign in',style: getBoldStyle(
              color: ColorManager.whiteTextColor, fontSize: FontSize.s18), )),
        ),
      ),
    );
  }

  Widget startButton(context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white
        ) ,
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (builder) => const LoginScreen()));
          },
          child: Center(child: Text('Get started',style: getSemiBoldStyle(
              color: ColorManager.secondaryColor, fontSize: FontSize.s18), )),
        ),
      ),
    );
  }


}
