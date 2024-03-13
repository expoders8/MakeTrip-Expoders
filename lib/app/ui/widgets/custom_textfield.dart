import 'package:flutter/material.dart';

import '../../../config/constant/color_constant.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? ctrl;
  final String? hintText;
  final TextInputType? keyboardType;
  final String? prefixIcon;
  final String? name;
  final String? validationMsg;
  final int? maxLines;
  final bool formSubmitted;

  const CustomTextFormField(
      {Key? key,
      this.ctrl,
      this.hintText,
      this.keyboardType,
      this.prefixIcon,
      this.maxLines,
      this.formSubmitted = false,
      this.name,
      this.validationMsg})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isTouched = false;
  bool _passwordVisible = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  validateInput(value) {
    if (isTouched || widget.formSubmitted) {
      if (value != null && value?.toString() != '') {
        if (widget.name == 'email') {
          if (value.isEmpty) {
            widget.validationMsg;
          } else {
            const pattern =
                r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9]+\.[a-zA-Z0-9-.]+$)';
            final regExp = RegExp(pattern);

            if (!regExp.hasMatch(value.toString())) {
              return "Please enter valid email";
            }
          }
        }
        if (widget.name == "password") {
          if (value.isEmpty) {
            widget.validationMsg;
          }
        }
        return null;
      }
      return widget.validationMsg;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.ctrl,
      keyboardType: widget.keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return validateInput(value);
      },
      decoration: InputDecoration(
        hintText: widget.hintText,
        filled: true,
        fillColor: kWhiteColor,
        contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
        hintStyle: const TextStyle(color: kGreyColor),
        labelStyle: const TextStyle(color: kBlackColor),
        prefixIcon: widget.prefixIcon != null
            ? Image.asset(
                widget.prefixIcon.toString(),
                color: kPrimaryColor,
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              )
            : null,
        // suffixIcon: widget.name == "password"
        //     ? IconButton(
        //         splashColor: kTransparentColor,
        //         highlightColor: kTransparentColor,
        //         icon: Icon(
        //           _passwordVisible ? Icons.visibility : Icons.visibility_off,
        //           color: kPrimaryColor,
        //           size: 18,
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             _passwordVisible = !_passwordVisible;
        //           });
        //         },
        //       )
        //     : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(9.0),
          ),
          borderSide: BorderSide(color: kPrimaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.0),
          borderSide: const BorderSide(color: kPrimaryColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9.0),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
      ),
      maxLines: widget.maxLines,
      onChanged: (value) => {
        isTouched = true,
      },
    );
  }
}
