import 'package:flutter/material.dart';

import '../screens/bottom_screen.dart';
import '../widgets/elevated_button_widget.dart';
import 'sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final navigatorKey = GlobalKey<NavigatorState>();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    emailController;
    passwordController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool rememberMe = false;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView(
        children: [
          const SizedBox(height: 50),
          const Text(
            'Login In to Your Account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          Text(
            'Email',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(.5)),
          ),
          const SizedBox(height: 10),
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: emailController,
                  decoration: const InputDecoration(
                    focusColor: Colors.black,
                    hintText: 'example@gmail.com',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Password',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(.5)),
          ),
          const SizedBox(height: 10),
          Container(
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    focusColor: Colors.black,
                    hintText: 'Enter password',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Checkbox(value: (rememberMe), onChanged: (value) {}),
              const SizedBox(width: 10),
              const Text(
                'Remember me',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //       builder: (context) =>
                  //           const ForgotPasswordPage()),
                  // );
                },
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          ElevatedButtonWidget(
            label: 'Login',
            labelColor: Colors.white,
            buttonColor: Colors.green,
            callback: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const BottomScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const SignUpPage()),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Divider(height: 1, color: Colors.black.withOpacity(.5)),
              ),
              Text(
                'OR',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black.withOpacity(.5)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Divider(height: 1, color: Colors.black.withOpacity(.5)),
              ),
            ],
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                      child: Image.network(
                    'http://pngimg.com/uploads/google/google_PNG19635.png',
                    fit: BoxFit.cover,
                    height: 30,
                  )),
                  const SizedBox(width: 5),
                  const Text('Sign-in with Google')
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
