import 'package:flutter/material.dart';
import 'package:flutter_start/models/loginModel.dart';
import 'package:flutter_start/utils/routes.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  void _handleLogin(BuildContext context, LoginModel value){


    if(!_formKey.currentState!.validate()){
      return;
    }

    Future.delayed(const Duration(seconds: 2), (){

      value.setLoginSuccessful();

      Navigator.pushNamed(context, MyRoutes.homeRoute);

    });

  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginModel>(
      builder: (BuildContext context, value, Widget? child) {

        return Material(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset('assets/images/login.png', fit: BoxFit.contain),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome ${value.getName}",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter Username", labelText: "Username"),
                            validator: (value) {
                              if(value!.isEmpty){
                                return "Username Can't be NULL";
                              }
                            },
                            onChanged: (text) {
                              value.setName = text;
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter Password", labelText: "Password"),
                            validator: (value) {
                              if(value!.isEmpty){
                                return "Password Can't be NULL";
                              }else if(value.length < 8){
                                return "Password Must be at-least 8 chars. long";
                              }
                            },
                          )
                        ],
                      ),
                    )
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: value.getLoading() ? null : ()=> { value.setLoading(), _handleLogin(context, value)},
                  style: TextButton.styleFrom(minimumSize: const Size(200, 50)),
                  child: value.getLoading() ? const CircularProgressIndicator()
                      : value.getLogin() ? const Icon(Icons.check) : const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        "By SignUp or Login you Agree to our terms and Conditions",
                        style: TextStyle(color: Colors.green),
                      ),
                    ))
              ],
            ));
      },
    );
  }
}
