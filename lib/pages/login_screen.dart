import 'dart:async';

import 'package:calorie_tracker/api/send_user_credentials.dart';
import 'package:calorie_tracker/pages/home_screen.dart';
import 'package:calorie_tracker/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import '../res/colors.dart';
import '../res/font.dart';
import '../res/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 4), _goNext);
  }

  _goNext() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (builder) => const HomeScreen()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
    _emailController.dispose();
    _passwordController.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  late bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (builder) => const Splash()));
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Sign in to Coinbase',
                  style:
                      getBoldStyle(color: Colors.black, fontSize: FontSize.s20),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                child: Text(
                  'Email',
                  style: getSemiBoldStyle(
                      color: Colors.black, fontSize: FontSize.s15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(5.0)),
                    hintText: 'you@example.com',
                    hintStyle: getMediumStyle(
                        color: Colors.grey.shade400, fontSize: FontSize.s16),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorManager.primaryColor),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Enter an email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                child: Text(
                  'Password',
                  style: getSemiBoldStyle(
                      color: Colors.black, fontSize: FontSize.s15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  obscuringCharacter: '•',
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(5.0)),
                    hintText: '•••••••••',
                    hintStyle: getMediumStyle(
                        color: Colors.grey.shade400, fontSize: FontSize.s16),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: ColorManager.primaryColor),
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                  validator: (password) {
                    if (password == null ||
                        password.isEmpty && password.length < 6) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              login(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Forgot Password?',
                      style: getSemiBoldStyle(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Privacy Policy',
                      style: getSemiBoldStyle(
                          color: ColorManager.primaryColor,
                          fontSize: FontSize.s14),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget login(context) {
    final width = MediaQuery.of(context).size.width;
    double height = 60;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: GestureDetector(
        onTap: () async {
          setState(() {
            _isLoading = true;
            _startDelay();
          });
          final response = await sendUserCredentials(
              email: _emailController.value.text,
              password:_passwordController.value.text);
          if(response == 200){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Login Successful'),backgroundColor: ColorManager.barColor,)
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text('Failed to send Message!. Error code: ${response.toString()}'),backgroundColor: Colors.red,)
            );
          }
          _emailController.clear();
          _passwordController.clear();
          Navigator.of(context).push(
              MaterialPageRoute(builder: (builder) => const HomeScreen()));
        },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: _isLoading == true
                  ?  ColorManager.atTextColor
                  : ColorManager.primaryColor),
          child: Center(
            child: _isLoading == true
                ? const CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  )
                : Text(
                    'Sign in',
                    style: getSemiBoldStyle(
                        color: Colors.white, fontSize: FontSize.s18),
                  ),
          ),
        ),
      ),
    );
  }
}
