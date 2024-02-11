import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../core/ulits/const.dart';

class VerificationBox extends StatelessWidget {
  const VerificationBox({
    super.key,
  });
 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        
        
        onChanged: (value) => {
          if (value.length == 1) {FocusScope.of(context).nextFocus()}
        },
        onSaved: (pin2) {},
        decoration: const InputDecoration(
          hintText: "0",
          border: InputBorder.none,
          fillColor: colorTextField,
          filled: true,
        ),
        style: Theme.of(context).textTheme.headlineMedium,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
      ),
    );
  }
}
