import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_button.dart';
import 'package:find_me_flutter_app/custom_widget/custom_dropdown_button.dart';
import 'package:find_me_flutter_app/custom_widget/custom_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool isDefault = false;
  int dropdownMonthlyValue = 08;
  int dropdownYearlyValue = 2021;
  final List<int> month = [01,02,03,04,05,06,07,08,09,10,11,12];
  final List<int> year = [2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030];
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
                    SizedBox(height: 40,),
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
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        CustomDropDownButton(
                          underline: Container(),
                          value: dropdownMonthlyValue,
                          onChanged: (newValue){
                            setState(() {
                              dropdownMonthlyValue = newValue;
                            });
                            },
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 55.0,right: 5.0),
                            child: Icon(Icons.arrow_drop_down_outlined),
                          ),
                          width: MediaQuery.of(context).size.width /2.7,
                            items: month.map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                value: value,
                                  child: Text('     $value')
                              );
                            }).toList()
                        ),
                        SizedBox(width: 23,),
                        CustomDropDownButton(
                            underline: Container(),
                            value: dropdownYearlyValue,
                            onChanged: (newValue){
                              setState(() {
                                dropdownYearlyValue = newValue;
                              });
                            },
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 55.0,right: 5.0),
                              child: Icon(Icons.arrow_drop_down_outlined),
                            ),
                            width: MediaQuery.of(context).size.width /2.7,
                            items: year.map<DropdownMenuItem<int>>((int value) {
                              return DropdownMenuItem<int>(
                                  value: value,
                                  child: Text('     $value')
                              );
                            }).toList()
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        CustomFormField(
                            validator: (value){
                            },
                          labelText: '123',
                          width: MediaQuery.of(context).size.width / 2.7,
                        ),
                        SizedBox(width: 23,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 45,
                          width: MediaQuery.of(context).size.width / 2.7,
                          child: Text("3 or 4 digits usually found\non the signature strip", style: TextStyle(fontSize: 11, fontFamily: 'Mulish', fontWeight: FontWeight.w400, color: AppTheme.black.withOpacity(0.4) ),),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              isDefault = !isDefault;
                            });
                          },
                          child: CupertinoSwitch(
                            value: isDefault,
                            onChanged: (bool value){
                              setState(() {
                                value = isDefault;
                              });
                            },
                            activeColor: AppTheme.blue,
                          ),
                        ),
                        Text('SET AS DEFAULT', style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'Mulish', fontSize: 11, color: AppTheme.blue),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    CustomButton(
                      buttonRadius: 10,
                      textFontSize: 16,
                        borderColor: AppTheme.blue,
                        decorationColor: AppTheme.blue,
                        buttonText: 'Proceed To Payment',
                        onPressed: (){}
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
