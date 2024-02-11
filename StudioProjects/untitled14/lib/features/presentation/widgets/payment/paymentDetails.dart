
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled14/features/presentation/widgets/payment/paymentMehodItem.dart';
import 'package:untitled14/features/presentation/widgets/payment/thankyou_view_body.dart';


import '../../../../core/ulits/styles.dart';
import '../../../../payment1.dart';
import 'mycart_view.dart';
final GlobalKey<FormState> Form=GlobalKey();
AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
class PaymentDetails extends StatefulWidget {
   PaymentDetails({Key? key}) : super(key: key);

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
List<String>PaymentmethodItem=[
  "assets/images/Group.svg",
      "assets/images/Group.svg"
];

int ActiveIndex=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context) =>mycartview()),);

        },
            child: Icon(Icons.arrow_back)),
        title: Text("MY Cart",
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),

      ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 62,

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
                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
                     child: PaymentMethodItem(isActive: ActiveIndex==index, image:PaymentmethodItem[index],),
                   ),
                 );
                }),
              ),
              customCreditCard(),
              Container(
                  width: 350,
                  height: 73,
                  decoration:     BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    //  color: Color(0xff34a853)),
                      color:HexColor("#3D7E80")),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: MaterialButton(
                        onPressed:(){
                         if(Form.currentState!.validate()){
                           Form.currentState!.save();
                         }else{

                           autovalidateMode=AutovalidateMode.always;
                           setState(() {

                           });
                         }
                         Navigator.push(context, MaterialPageRoute(builder:(context) =>ThankYouViewBody()),);
                        } ,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                              "Payment",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              )
                          ),
                        ),
                      ),
                    ),
                  )
              )

            ],
          ),
        )

    );
  }
}
class customCreditCard extends StatefulWidget {
  @override
  State<customCreditCard> createState() => _customCreditCardState();
}

class _customCreditCardState extends State<customCreditCard> {
   String cardNumber='',
      expiryDate='',
      cardHolderName='',
      cvvCode = '';

  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return

     SingleChildScrollView(
       child:  Column(
         children: [
           CreditCardWidget(cardNumber: cardNumber,
               expiryDate: expiryDate,
               cardHolderName: cardHolderName,
               cvvCode: cvvCode,
               showBackView: showBackView,
               onCreditCardWidgetChange: (value) {}),
           CreditCardForm(cardNumber: '', expiryDate: '', cardHolderName: '', cvvCode: '', onCreditCardModelChange: (CreditCardModel ) {
             cardHolderName=CreditCardModel.cardHolderName;
             cardNumber=CreditCardModel.cardNumber;
             cvvCode=CreditCardModel.cvvCode;
             expiryDate=         CreditCardModel.expiryDate;
             showBackView=CreditCardModel.isCvvFocused;//بتقلب الكارد
             setState(() {

             });
           }, formKey: Form,),

         ],));}}
