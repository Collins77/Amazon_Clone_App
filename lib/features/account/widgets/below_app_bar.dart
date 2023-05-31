import 'package:flutter/material.dart';
import 'package:opasso_app/constants/global_variables.dart';
import 'package:opasso_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

class BelowAppBar extends StatelessWidget {
  const BelowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
            text: 'Hello, ',
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            children: [
              TextSpan(
            text: user.name,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              ),
            ),
            ],
          ),
    ),
        ],
      ),
    );
  }
}