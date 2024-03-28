import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWithError extends StatelessWidget {
  TextFieldWithError(
      {super.key, this.onChanged, this.hintText, this.errorText});

  Function(String)? onChanged;
  String? hintText;
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 3,
              ),
            ),
            hintText: hintText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Text(
            errorText ?? '',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
