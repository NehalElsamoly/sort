import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled14/features/presentation/widgets/pickimage.dart';
import 'package:untitled14/register.dart';
import 'package:untitled14/register2.dart';
import 'package:untitled14/features/presentation/widgets/setting.dart';
import 'package:untitled14/test.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this line
import 'features/presentation/widgets/payment/mycart_view.dart';
import 'features/presentation/widgets/payment/paymentDetails.dart';
import 'flex.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
void main() async{
  print("nehal");
  var delegate = await LocalizationDelegate.create(
      fallbackLocale: 'ar',
      supportedLocales: ['ar', 'en_US']);

  runApp(LocalizedApp(delegate, MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String selectedLanguage;

  @override
  void initState() {
    super.initState();
    // Call the function to load the selected language from SharedPreferences
    loadSelectedLanguage();
  }

  void loadSelectedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLanguage = prefs.getString('selectedLanguage');
    if (savedLanguage != null) {
      setState(() {
        selectedLanguage = savedLanguage;
      });
    } else {
      // If no language is saved, default to English
      setState(() {
        selectedLanguage = 'Arabic';
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    var localizationDelegate = LocalizedApp.of(context).delegate;

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            localizationDelegate
          ],
          supportedLocales: localizationDelegate.supportedLocales,
          locale: localizationDelegate.currentLocale,
          home: settingpage(),
        );
      },
    );
  }
}
