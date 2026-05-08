import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  const CustomTextField
  ({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.only(bottom: 15),
           child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(icon),
                        labelText: label,
                        isDense: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18)
                        ),
                      ),
                     ),
      );

  }
}