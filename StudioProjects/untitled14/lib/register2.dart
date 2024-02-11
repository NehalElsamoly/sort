import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _governorateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordcontroller = TextEditingController();

  final TextEditingController _confirmPasswordController = TextEditingController();

  String countryValue="countryValue";
String stateValue="stateValue";
String cityValue="cityValue";
  String selectedOptioncites = '';
  String selectedOptiondays = '';
  String selectedOptionyears = '';
  String selectedOptionmonthes = '';


  String selectedOptiongoverns = '';

  List<String> days = List.generate(31, (index) => (index + 1).toString());
  List<String> monthes = List.generate(12, (index) => (index + 1).toString());
  List<String> years = List.generate(2024, (index) => (1999 + 1).toString());
  List<String> cities = [
    'City1',
    'City2',
    'City3',
    'City4',
    'City1',
    'City2',
    'City3',
    'City4',
    // Add more cities as needed
  ];
  List<String> governments = [
    'goverment1',
    'goverment2',
    'goverment3',
    'goverment4',
    'goverment5',
    'goverment6',
    'goverment7',
    'goverment8',
    // Add more cities as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextField('Name', _nameController, TextInputType.text),
              buildTextField('Phone Number', _phoneController, TextInputType.number),
              buildTextField('Email', _emailController, TextInputType.emailAddress),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("place", style: TextStyle(fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.grey, width: 1),
                                    color: Colors.white
                                ),
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down),
                                  items: [
                                    DropdownMenuItem(
                                      value: '',
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.location_city),
                                          SizedBox(width: 75),


                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('Cities'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    for (var city in cities)
                                      DropdownMenuItem(
                                        value: city,
                                        child: Text(city),
                                      ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                     // selectedOptioncites = value!;
                                    });
                                  },
                                  hint: Text(selectedOptioncites.isEmpty ? 'Cites' : selectedOptioncites),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.grey, width: 1),
                                    color: Colors.white
                                ),
                                child: DropdownButton(
                                  icon: Icon(Icons.arrow_drop_down),
                                  items: [
                                    DropdownMenuItem(
                                      value: '',
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.location_city_rounded),
                                          SizedBox(width:10),


                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Text('Governments'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    for (var govern in governments)
                                      DropdownMenuItem(
                                        value: govern,
                                        child: Text(govern),
                                      ),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                   //   selectedOptiongoverns = value!;
                                    });
                                  },
                                  hint: Text(selectedOptiongoverns.isEmpty ? 'Governments' : selectedOptiongoverns),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )


            ,
          ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Age",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey, width: 1),
                            color: Colors.white
                          ),
                          child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            items: [
                              DropdownMenuItem(
                                value: 'Day',
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_today),
                                    SizedBox(width: 8),
                                    Text('Day'),
                                  ],
                                ),
                              ),
                              for (var day in days)
                                DropdownMenuItem(
                                  value: day,
                                  child: Text(day),
                                ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedOptiondays = "$value";
                              });
                            },
                            hint: Text(selectedOptiondays.isEmpty ? 'Days' : selectedOptiondays),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey, width: 1),
                              color: Colors.white
                          ),
                          child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            items: [
                              DropdownMenuItem(
                                value: 'monthes',
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_month),
                                    SizedBox(width: 8),
                                    Text('monthes'),
                                  ],
                                ),
                              ),
                              for (var monthes in monthes)
                                DropdownMenuItem(
                                  value: monthes,
                                  child: Text(monthes),
                                ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedOptionmonthes ="$value";
                              });
                            },
                            hint: Text(selectedOptionmonthes.isEmpty ? 'monthes' : selectedOptionmonthes),
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey, width: 1),
                              color: Colors.white
                          ),
                          child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down),
                            items: [
                              DropdownMenuItem(
                                value: 'years',
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_month_rounded),
                                    SizedBox(width: 8),
                                    Text('years'),
                                  ],
                                ),
                              ),
                              for (var years in years)
                                DropdownMenuItem(
                                  value: years,
                                  child: Text(years),
                                ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selectedOptionyears = "$value";
                              });
                            },
                            hint: Text(selectedOptionyears.isEmpty ? 'years' : selectedOptionyears),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              GenderSelection(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "password",
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
                      controller: _passwordcontroller,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true, // Set this to true to obscure the text
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(11), // Limit to 11 characters
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "confirm password",
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
                      controller: _confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true, // Set this to true to obscure the text
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(11), // Limit to 11 characters
                      ],
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }else if (value != _passwordcontroller.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity, // Expanded width
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, handle registration logic here
                        // Access the entered values using the controllers
                        String name = _nameController.text;
                        String phone = _phoneController.text;
                        String email = _emailController.text;
                        String governorate = _governorateController.text;
                        String city = _cityController.text;
                        // Perform registration logic here
                        print('Registration successful:');
                        print('Name: $name');
                        print('Phone: $phone');
                        print('Email: $email');
                        print('Governorate: $governorate');
                        print('City: $city');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Background color
                      onPrimary: Colors.white, // Text color
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),

Row(
  mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children:[
  Text(
      "You have an account?",
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      )
  ),
      MaterialButton(onPressed: (){}, child:Text(
          "Login",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: HexColor("#8EB3E6")
          )
      ), )
]
)

            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller, TextInputType keyboardType) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
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
                controller: controller,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                  hintText: 'Enter $label',
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(11), // Limit to 11 characters
                ],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter $label';
                  }
                  return null;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}


class GenderSelection extends StatefulWidget {
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMale = false;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Gender',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            Row(
              children: [
                Checkbox(
                  value: isMale,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  checkColor: Colors.white, // Set the color of the checkmark
                  activeColor: Colors.grey, // Set the color of the outer circle
                  onChanged: (value) {
                    setState(() {
                      isMale = value!;
                      // Uncheck female when male is selected
                      if (isMale) {
                        isFemale = false;
                      }
                    });
                  },
                ),
                Text('Male', style: TextStyle(fontSize: 15)),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: isFemale,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(200),
                  ),
                  checkColor: Colors.white, // Set the color of the checkmark
                  activeColor: Colors.grey, // Set the color of the outer circle
                  onChanged: (value) {
                    setState(() {
                      isFemale = value!;
                      // Uncheck male when female is selected
                      if (isFemale) {
                        isMale = false;
                      }
                    });
                  },
                ),
                Text('Female', style: TextStyle(fontSize: 15)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


