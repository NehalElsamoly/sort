import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled14/features/presentation/widgets/payment/paymentDetails.dart';
import 'package:untitled14/features/presentation/widgets/payment/paymentMehodItem.dart';
int ActiveIndex=0;
List<String>PaymentmethodItem=[
  "assets/images/Group.svg",
  "assets/images/Group.svg"
];

class PaymentMethodsBottomSheet extends StatefulWidget {
   PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: PaymentmethodItem.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      ActiveIndex=index;
                      setState(() {

                      });
                    },
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 8.0),
                      child: PaymentMethodItem(isActive: ActiveIndex==index, image:PaymentmethodItem[index],),
                    ),
                  );
                }),
          ),
           SizedBox(
            height: 32,
          ),
          Container(
            width: 350,
            height: 73,
            decoration:     BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: HexColor("#3D7E80")),
            child: MaterialButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder:(context) =>PaymentDetails()),);
            },
              child: Text("continue",style: TextStyle(color:Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}