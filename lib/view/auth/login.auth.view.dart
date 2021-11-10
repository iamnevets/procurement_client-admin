import 'package:flutter/material.dart';
import 'package:procurement/view/dashboard/dashboard.view.dart';

class AuthLoginView extends StatefulWidget {
  const AuthLoginView({Key? key}) : super(key: key);

  @override
  _AuthLoginViewState createState() => _AuthLoginViewState();
}

class _AuthLoginViewState extends State<AuthLoginView> {
    final _loginKey = GlobalKey<FormState>();
    bool _hidePassword = true;
  @override
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Form(
                      key: _loginKey,
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Sign Up',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      )),
                                  Text('Create New Account'),
                                ],
                              ),
                            ),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 7,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    enableSuggestions: true,
                                    keyboardType: TextInputType.text,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                                      hintText: 'Business Name',
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.all(20),
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFormField(
                                    obscureText: _hidePassword,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Theme.of(context).colorScheme.primary.withAlpha(40),
                                        hintText: 'Password',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(20),
                                        suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                _hidePassword = !_hidePassword;
                                              });
                                            },
                                            icon: _hidePassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility)))),
                                SizedBox(
                                  height: 20,
                                ),
                                // Drop Down UserType
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AuthLoginView()));
                        },
                        child: Text('ALREADY HAVE AN ACCOUNT?')),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      height: 60,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all<double>(0),
                          ),
                          onPressed: () {
                            // final validate = _loginKey.currentState!.validate();
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardView()));
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 23, color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
