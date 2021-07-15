import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_prohect/core/auth/login/components/login_form_component.dart';
import 'package:test_prohect/validator/validators.dart';

// Define a corresponding State class.
// This class holds data related to the form.

class LoginFormPresentation extends StatelessWidget {
  late final _key;

  LoginFormPresentation(this._key);

  EmailInput emailValidator = EmailInput.pure();
  PasswordInput passwordInput = PasswordInput.pure();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    //final size = MediaQuery.of(context).size.height;
    return Form(
      key: _key,
      child: ColoredBox(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                alignment: Alignment.center,
                child: Text(
                  "Logo",
                  style: TextStyle(
                      fontSize: 55,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                        child: TextFormField(
                          validator: emailValidationFunc,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                          maxLines: 1,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                            isDense: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.redAccent,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: HexColor('#969696'),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                        child: TextFormField(
                          validator: passwordValidationFunc,
                          cursorColor: Colors.black,
                          obscureText: true,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 15, 15),
                            isDense: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: HexColor('#969696'),
                              fontFamily: 'Roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Forgot password!')));
                        },
                        child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: HexColor('#1dbfaf'),
                      padding: EdgeInsets.fromLTRB(50, 5, 50, 5)),
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
