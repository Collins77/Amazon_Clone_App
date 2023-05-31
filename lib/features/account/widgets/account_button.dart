import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final VoidCallback OnTap;
  const AccountButton({super.key, required this.text, required this.OnTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 0.0),
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: OutlinedButton(
        onPressed: OnTap,
        child: Text(text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            )),
      ),
    );
  }
}
