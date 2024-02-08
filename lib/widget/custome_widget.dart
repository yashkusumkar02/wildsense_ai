import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:wildsense_ai/common/common.dart';

class CustomTextFormField extends StatefulWidget {
  final String hinttext;
  final bool obsecuretext;
  final TextEditingController? controller;
  final String? Function(String?)? validator; // Add validator function
  const CustomTextFormField({
    Key? key,
    required this.hinttext,
    required this.obsecuretext,
    this.controller,
    this.validator, // Add validator parameter
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obsecuretext,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: widget.hinttext,
        hintStyle: Common().hinttext,
      ),
      style: TextStyle(color: Colors.white),
      validator: widget.validator, // Add validator
    );
  }
}

class CustomElevatedButton extends StatefulWidget {
  final String message;
  final Function() function;
  final List<Color> gradientColors; // Define gradient colors here
  final double borderRadius;
  final double elevation;
  final double height;
  final double width;
  const CustomElevatedButton({
    Key? key,
    required this.message,
    required this.function,
    required this.gradientColors,
    required this.borderRadius,
    required this.elevation,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: widget.gradientColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(widget.borderRadius),
      ),
      child: ElevatedButton(
        onPressed: () async {
          setState(() {
            loading = true;
          });
          await widget.function();

          setState(() {
            loading = false;
          });
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(widget.elevation),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
          ),
        ),
        child: loading
            ? const CupertinoActivityIndicator()
            : Text(
          widget.message,
          style: Common().semiboldwhite,
        ),
      ),
    );
  }
}
