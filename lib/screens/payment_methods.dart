import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_formfield.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        top: false,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text('Add Payment Methods', style: TextStyle(fontSize: 17, fontFamily: 'Mulish',fontWeight: FontWeight.w400, color: AppTheme.blue),),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: AppTheme.blue),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/card.png'),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter your payment details', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Mulish', fontSize: 17, color: AppTheme.black),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text("By continuing you agree to our", style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 13, fontFamily: 'Mulish', color: AppTheme.black
                        )),
                        InkWell(
                          onTap: (){},
                          child: Text(' Terms', style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 13, fontFamily: 'Mulish', color: Colors.blue,
                          )),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                    CustomFormField(
                      keyboardType: TextInputType.text,
                      labelText: "Name",
                        validator: (value){},
                    ),
                    SizedBox(height: 20,),
                    CustomFormField(
                      keyboardType: TextInputType.phone,
                      labelText: "**** **** **** 3957",
                      validator: (value){},
                    ),
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
