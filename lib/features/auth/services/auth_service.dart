import 'package:flutter/material.dart';
import 'package:opasso_app/constants/error_handling.dart';
import 'package:opasso_app/constants/global_variables.dart';
import 'package:opasso_app/constants/utils.dart';
import 'package:opasso_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          email: email,
          password: password,
          address: '',
          type: '',
          token: '');

      http.Response res = await http.post(Uri.parse('$uri/api/signup'),
          body: user.toJson(),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=utf-8',
          });
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackBar(context, 'Account created successfully!');
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
