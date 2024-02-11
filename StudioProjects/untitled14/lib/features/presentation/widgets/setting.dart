import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled14/features/presentation/widgets/personalinformation/personal.dart';
import 'package:untitled14/payment1.dart';
import 'package:untitled14/features/presentation/widgets/pickimage.dart';
import 'bottom_naviagetion_bar.dart';
import 'changepass.dart';
import 'feedback.dart';
import 'help.dart';
import 'settingpage.dart';
bool switch1Status = false;
bool switch2Status = false;
Uint8List? _image;
late double _minTextAdapt; // Declare as late

String selectedLanguage = 'English';
List<String> languages = ['English', 'Arabic']; // Add more languages as needed
String vlaue(selectedLanguage){
  return selectedLanguage;
}
bool status=true;
class settingpage extends StatefulWidget {
  const settingpage({Key? key}) : super(key: key);

  @override
  State<settingpage> createState() => _settingpageState();
}

class _settingpageState extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return Scaffold(
      // backgroundColor: Colors.grey[300],

      appBar: PreferredSize(

        preferredSize: Size.fromHeight(100.0),
        child: Container(
          color: Colors.white,
          child: Container(
            height: 120,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_back,size: 40,color:HexColor("#3D7E80")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Center(child: Text(translate("app_bar.text.setting"),style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color:HexColor("#3D7E80")
                  ),)),
                )
              ],
            ),
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(

          children: [
            ResponsiveProfileWidget(
              image: _image,
              onEditProfileTap: () {
                showEditProfileDropdownMenu(context);
              },
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Container(
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        //   border: Border.all(color: Colors.black), // You can also set other border properties like color

                        color: Colors.grey[200]
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.person, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text(translate("personal.personal"), style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell( onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>Personal()), (route){
                                      return false;
                                    });
                                  } ,
                                      child:        Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.notifications_active_outlined, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text(translate("notification.notification"), style: TextStyle(color:Colors.grey))),
                                  Spacer(),

                                  FlutterSwitch(
                                    width: 50.0,
                                    height: 25.0,
                                    toggleSize: 20.0,
                                    value: switch2Status,
                                    borderRadius: 30.0,
                                    padding: 2.0,
                                    toggleColor: Colors.white,
                                    // switchBorder: Border.all(
                                    //   color: Colors.black,
                                    //   width: 6.0,
                                    // ),
                                    toggleBorder: Border.all(
                                      color: Colors.white,
                                      width: 5.0,
                                    ),
                                    activeColor: HexColor("#3D7E80"),
                                    inactiveColor: Colors.black38,
                                    onToggle: (value) {
                                      setState(() {
                                        switch2Status = value;

                                      });
                                    },
                                  ),
                                ],
                              )

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.language, color: HexColor("#3D7E80")),
                                ),
                                Center(child: Text(translate('language.selected_message'), style:  TextStyle(color:Colors.grey))),

                                Spacer(),
                                Container(
                                  // width: 75.0, // Set the desired width
                                  height:35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.grey[50],
                                  ),
                                  child: DropdownButton<String>(
                                    value: selectedLanguage,
                                    // onChanged: (String? newValue) async {
                                    //   if (newValue != null) {
                                    //     setState(() {
                                    //     //   saveSelectedLanguage(newValue); // Save the selected language
                                    //     //   if (newValue == 'Arabic') {
                                    //     //     changeLocale(context, 'ar'); // Change locale to Arabic
                                    //     //   } else {
                                    //     //     changeLocale(context, 'en_US'); // Change locale to English
                                    //     //   }
                                    //     //   selectedLanguage = newValue; // Update the selected language variable
                                    //     // });
                                    //
                                    //   }
                                    // },

                                    onChanged: (String? newValue) async {
                                      if (newValue != null) {
                                        setState(() {
                                          saveSelectedLanguage(newValue);
                                         if (newValue == 'Arabic') {
                                           changeLocale(context, 'ar'); // Change locale to Arabic
                                        } else {
                                              changeLocale(context, 'en_US'); // Change locale to English
                                             }// Save the selected language
                                          changeLocale(context, newValue); // Change locale to the newly selected language
                                          selectedLanguage = newValue; // Update the selected language variable
                                        });
                                      }
                                    },

                                    icon: Icon(Icons.arrow_drop_down_sharp),
                                    iconSize: 15.0, // Set the icon size as needed
                                    elevation: 16,
                                    style: TextStyle(color: Colors.black, fontSize: 14.0), // Set the font size
                                    underline: Container(
                                      height: 1,
                                      color: Colors.transparent,
                                    ),
                                    dropdownColor:Colors.grey[300] , // Set dropdown background color
                                    borderRadius: BorderRadius.circular(5),
                                    items: languages.map((String language) {
                                      return DropdownMenuItem<String>(
                                        value: language,
                                        child: Text(language),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.key_off_outlined, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("change password", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell( onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>ChangePassword()), (route){
                                      return false;
                                    });
                                  } ,
                                      child:        Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.theater_comedy, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("Thems", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell( onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>ChangePassword()), (route){
                                      return false;
                                    });
                                  } ,
                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),

                                  //  /ChangePassword
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.help, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("Help", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell(
                                      onTap: (){
                                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>MyHelp()), (route){
                                          return false;
                                        });
                                      } ,
                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.add_box_rounded, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("Add child", style: TextStyle(color:Colors.grey))),
                                  Spacer(),

                                  Icon(Icons.arrow_forward, color: HexColor("#3D7E80")),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.payment_outlined, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("payment", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell(onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>mycartview()), (route){
                                      return false;
                                    });
                                  } ,

                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.sell, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("Select child", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell(onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>mycartview()), (route){
                                      return false;
                                    });
                                  } ,

                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.generating_tokens, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("Feedback", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell(onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>MyFeedback()), (route){
                                      return false;
                                    });
                                  } ,

                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(Icons.logout, color: HexColor("#3D7E80")),
                                  ),
                                  Center(child: Text("logout", style: TextStyle(color:Colors.grey))),
                                  Spacer(),
                                  InkWell(onTap: (){
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) =>mycartview()), (route){
                                      return false;
                                    });
                                  } ,

                                      child: Icon(Icons.arrow_forward, color: HexColor("#3D7E80"))),
                                ],
                              )

                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNaviatonBar(),
    );

  }


  void saveSelectedLanguage(String language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selectedLanguage', language);
  }

}


void showEditProfileDropdownMenu(BuildContext context) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(0, 100, 0, 0), // Adjust the position of the dropdown
    items: [
      PopupMenuItem(
        child: ListTile(
          title: Text('Edit Profile'),
          onTap: () {
            // Navigate to the edit profile screen
            Navigator.push(context, MaterialPageRoute(builder: (context) => PickImage()));
          },
        ),
      ),
    ],
  );
}
