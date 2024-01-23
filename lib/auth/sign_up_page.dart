import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../widgets/elevated_button_widget.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

final formKey = GlobalKey<FormState>();
final navigatorKey = GlobalKey<NavigatorState>();
final TextEditingController usernameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _SignUpPageState extends State<SignUpPage> {
  @override
  void initState() {
    usernameController;
    emailController;
    passwordController;
    super.initState();
  }

  @override
  void dispose() {
    usernameController;
    emailController;
    passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              const SizedBox(height: 50),
              const Text(
                'Create Account',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Username',
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: usernameController,
                      decoration: const InputDecoration(
                        focusColor: Colors.black,
                        hintText: 'John Doe',
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
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
                      textInputAction: TextInputAction.next,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? "Enter a valid email"
                              : null,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        focusColor: Colors.black,
                        hintText: 'Enter Password',
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      validator: (value) => value != null && value.length < 6
                          ? "Enter min. 6 characters"
                          : null,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButtonWidget(
                label: 'Sign Up',
                labelColor: Colors.white,
                buttonColor: Colors.green,
                callback: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginPage()));
                },
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const LoginPage()));
                    },
                    child: const Text(
                      'Login',
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
                    child:
                        Divider(height: 1, color: Colors.black.withOpacity(.5)),
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
                    child:
                        Divider(height: 1, color: Colors.black.withOpacity(.5)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () async {},
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        child: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          fit: BoxFit.cover,
                          height: 30,
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text('Sign-up with Google')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
