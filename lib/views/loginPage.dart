import 'package:flutter/material.dart';
import 'package:flutter_start/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool _isLoading = false;
  bool _loginSuccessful = false;

  final _formKey = GlobalKey<FormState>();

  void _handleLogin(){
    if(!_formKey.currentState!.validate()){
        return;
    }
    
    setState(() {
      _isLoading = true;
    });

    Future.delayed(const Duration(seconds: 2), (){

      _loginSuccessful = true;
      setState(() {
        _isLoading = false;
      });

      Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          _loginSuccessful = false;
        });
      });

      // Navigator.pushNamed(context, MyRoutes.homeRoute);

    });

  }

  @override
  Widget build(BuildContext context) {
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
              "Welcome $name",
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
                        name = text;
                        setState(() {});
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
                          return "Password Must be atleast 8 chars. long";
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
              onPressed: _isLoading? null : _handleLogin,
              style: TextButton.styleFrom(minimumSize: const Size(200, 50)),
              child: _isLoading ? CircularProgressIndicator()
                  : _loginSuccessful ? Icon(Icons.check) : const Text(
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
  }
}
