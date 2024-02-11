import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../core/ulits/styles.dart';
import '../../../../payment1.dart';
import '../cardInfoWidget.dart';
import 'mycart_view.dart';

class ThankYouViewcard extends StatelessWidget {
  const ThankYouViewcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xFFEDEDED),
        appBar: AppBar(
          leading: Icon(Icons.arrow_back,size: 30,),
          backgroundColor: Color(0xFFEDEDED),

        ),
        body: Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            color: const Color(0xFFEDEDED),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 22, right: 22,bottom: 20),
            child: Column(
              children: [
                const Text(
                  'Thank you!',
                  textAlign: TextAlign.center,
                  style: Styles.style25,
                ),
                Text(
                  'Your transaction was successful',
                  textAlign: TextAlign.center,
                  style: Styles.style20,
                ),
                const SizedBox(
                  height: 10,
                ),
                const   orderInfoItem(),

                const SizedBox(
                  height: 10,
                ),
               const orderInfoItem(),
                const SizedBox(
                  height: 10,
                ),
                const orderInfoItem(),
                const Divider(
                  height: 90,
                  thickness: 2,
                ),
                const   Totalprice(),
                const SizedBox(
                  height: 20,
                ),
                const CardInfoWidget(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      FontAwesomeIcons.barcode,
                      size: 64,
                    ),
                    Container(
                      width: 113,
                      height: 58,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:  BorderSide(
                              width: 1.50, color: HexColor("#3D7E80")),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: (){},
                          child: Text(
                            'PAID',
                            textAlign: TextAlign.center,
                            style: Styles.style24
                                .copyWith(color:  HexColor("#3D7E80")),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
                ),
              ],
            ),
          ),
        ),
    );

  }
}
