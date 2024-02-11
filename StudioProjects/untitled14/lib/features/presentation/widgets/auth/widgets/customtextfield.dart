import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/ulits/const.dart';

class CustomTextfield extends StatelessWidget {
  CustomTextfield({
    super.key,
    this.hintTex,
    this.suficon,
    this.preicon,
    this.controller,
    this.type,
    this.onChanged,
    this.valid,
    this.labelTex,
    this.inputformatter,
    this.obs,
  });

  String? hintTex;
  String? labelTex;
  IconButton? suficon;
  Icon? preicon;
  TextEditingController? controller;
  TextInputType? type;
  List<TextInputFormatter>? inputformatter;
  bool? obs;
  Function(String)? onChanged;
  String? Function(String?)? valid;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 80),
        child: TextFormField(
          enableSuggestions: true,
          inputFormatters: inputformatter,
          onChanged: onChanged,
          validator: valid,
          controller: controller,
          keyboardType: type,
          obscureText: obs!,
          
          decoration: InputDecoration(
            prefixIcon: preicon,
            suffixIcon: suficon,
            hintText: hintTex,
            labelText: labelTex,
            focusColor: kprimarycolor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
