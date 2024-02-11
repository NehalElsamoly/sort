import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}
final TextEditingController _textController = TextEditingController();
final TextEditingController _phonecontroller = TextEditingController();
final TextEditingController _editingController = TextEditingController();
final TextEditingController _textEditingController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
     appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(


                'Register'
             ,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Form(child:
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        controller: _textController,
                        keyboardType: TextInputType.name,
                        inputFormatters: [
                          // FilteringTextInputFormatter.digitsOnly,
                          // LengthLimitingTextInputFormatter(11),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                        ),
                      ),
                    )))
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "phone number",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
            controller: _phonecontroller,
            keyboardType: TextInputType.number,
            inputFormatters: [
            // FilteringTextInputFormatter.digitsOnly,
            // LengthLimitingTextInputFormatter(11),
            ],
            decoration: InputDecoration(
            hintText: 'Enter 11-digit phone number',
            ),
            ),
            )))  ,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        controller: _editingController,
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          // FilteringTextInputFormatter.digitsOnly,
                          // LengthLimitingTextInputFormatter(11),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter your mail',
                        ),
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Governorate",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        controller: _editingController,
                        keyboardType: TextInputType.emailAddress,
                        inputFormatters: [
                          // FilteringTextInputFormatter.digitsOnly,
                          // LengthLimitingTextInputFormatter(11),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter your Governorate',
                        ),
                      ),
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "City",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextFormField(
                        controller: _textEditingController,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          // FilteringTextInputFormatter.digitsOnly,
                          // LengthLimitingTextInputFormatter(11),
                        ],
                        decoration: InputDecoration(
                          hintText: 'Enter your mail',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ))),
          ],
        ),
      )
    );

  }
}
