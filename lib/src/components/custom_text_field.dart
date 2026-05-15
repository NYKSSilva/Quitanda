import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isSecret;


  const CustomTextField
  ({super.key,required this.icon,required this.label,
    this.isSecret = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

bool isObscure = false;
late bool obscure;

@override
  void initState(){
    super.initState();

    obscure = isObscure;
  }
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: obscure,

        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),

          suffixIcon: widget.isSecret? 
          IconButton(
                  onPressed:() { 
                   setState(() {
                        obscure = !obscure;
                    }); 
                  },
                  icon: Icon(
                    obscure
                    ?Icons.visibility
                    :Icons.visibility_off),
                ): null,
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
