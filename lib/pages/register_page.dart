import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  void register(BuildContext context) {
    // get auth service
    final auth = AuthService();

    if (_passwordController.text.isNotEmpty) {
      // passwords match -> create user
      if (_passwordController.text == _confirmPasswordController.text) {
        try {
          auth.signUpWithEmailAndPassword(
              _emailController.text, _passwordController.text);
        } catch (e) {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title: Text(e.toString()),
                  ));
        }
      }
      // passwords don't match -> tell user to fix
      else {
        showDialog(
            context: context,
            builder: (context) => const AlertDialog(
                  title: Text("Passwords don't match!"),
                ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              // logo
              Icon(
                Icons.message,
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(
                height: 50,
              ),

              // welcome back message
              Text(
                "Let's create an account for you",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary, fontSize: 16),
              ),

              const SizedBox(
                height: 50,
              ),

              // email textfield
              MyTextField(
                hintText: "Email",
                controller: _emailController,
              ),

              const SizedBox(
                height: 10,
              ),

              // password textfield
              MyTextField(
                hintText: "Password",
                obscureText: true,
                autoFill: false,
                controller: _passwordController,
              ),

              const SizedBox(
                height: 10,
              ),

              // confirm password textfield
              MyTextField(
                hintText: "Confirm Password",
                obscureText: true,
                autoFill: false,
                controller: _confirmPasswordController,
              ),

              const SizedBox(
                height: 25,
              ),

              // login button
              MyButton(
                text: "Register",
                onTap: () => register(context),
              ),

              const SizedBox(
                height: 25,
              ),

              // register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
