import 'package:flutter/material.dart';

import '../../../../../core/ulits/const.dart';
import '../../custom_button.dart';
import '../../textsmall.dart';
import '../../title.dart';
import '../welcome_starting.dart';
import 'massage_register.dart';


class TermOfUs extends StatelessWidget {
  const TermOfUs({super.key});
  static String id = 'Term OF Us page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          Titles(
            title: 'Terms of us',
            fsize: 30,
            ttextcolor: const Color(0xFF3D7E80),
          ),
          const SizedBox(
            height: 10,
          ),
          Titles(
            title: 'Terms and conditions',
            fsize: 20,
          ),
          // Text(
          //   "Terms and conditions",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 18,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          const TextContent(
            contant:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            textsmall: const Color(0xFF8C95A3),
          ),
          // Text(
          //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          //   style: TextStyle(
          //     color: Color(0xFF8C95A3),
          //     fontSize: 16,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Titles(
            title: "Privacy policy",
            fsize: 20,
          ),
          // Text(
          //   "Privacy policy",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 18,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          const TextContent(
            contant:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            textsmall: Color(0xFF8C95A3),
          ),
          // Text(
          //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          //   style: TextStyle(
          //     color: Color(0xFF8C95A3),
          //     fontSize: 16,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Titles(
            title: "Cookies policy",
            fsize: 20,
          ),
          // Text(
          //   "Cookies policy",
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 18,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          const SizedBox(
            height: 10,
          ),
          const TextContent(
            contant:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            textsmall: Color(0xFF8C95A3),
          ),
          // Text(
          //   "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          //   style: TextStyle(
          //     color: Color(0xFF8C95A3),
          //     fontSize: 16,
          //   ),
          // ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  tbutton: 'Accept',
                  wbutton: MediaQuery.of(context).size.width / 8,
                  hbutton: MediaQuery.of(context).size.height / 10,
                  colorbutton: kprimarycolor,
                  founbutton: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MassageRegister()));
                  },
                ),
                CustomButton(
                  tbutton: 'Decline',
                  wbutton: MediaQuery.of(context).size.width / 5,
                  hbutton: MediaQuery.of(context).size.height / 10,
                  colorbutton: const Color(0xFF8C95A3),
                  founbutton: () {
                    Navigator.pop(context,MaterialPageRoute(builder: (context)=>WelcomeStarting()));
                  },
                ),
              ],
            ),
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Container(
          //       width: MediaQuery.of(context).size.width / 2.5,
          //       height: 50,
          //       child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: Color(0xFF8C95A3),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(20),
          //             ),
          //           ),
          //           onPressed: () => {},
          //           child: Text(
          //             'Decline',
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 18,
          //             ),
          //           )),
          //     ),
          //     Container(
          //       height: 50,
          //       width: MediaQuery.of(context).size.width / 2.5,
          //       child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             backgroundColor: kprimarycolor,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(20),
          //             ),
          //           ),
          //           onPressed: () => {},
          //           child: Text(
          //             'Accept',
          //             style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 18,
          //             ),
          //           )),
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 100,
          ),
        ]),
      ),
    );
  }
}
