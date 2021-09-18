import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_button.dart';
import 'package:find_me_flutter_app/screens/dashboard.dart';
import 'package:find_me_flutter_app/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class OptVerificationScreen extends StatefulWidget {
  const OptVerificationScreen({Key? key}) : super(key: key);

  @override
  _OptVerificationScreenState createState() => _OptVerificationScreenState();
}

class _OptVerificationScreenState extends State<OptVerificationScreen> {
  Widget optWidget(){
    return PinCodeTextField(
        pinTheme: PinTheme(
          activeColor: AppTheme.blue,
          errorBorderColor: AppTheme.red,
          selectedColor: AppTheme.blue.withOpacity(0.3),
          selectedFillColor: AppTheme.white,
          inactiveColor: AppTheme.blue,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 60,
          fieldWidth: 60,
          activeFillColor: Colors.white,
        ),
        keyboardType: TextInputType.phone,
        animationType: AnimationType.fade,
        animationDuration: Duration(milliseconds: 300),
      textCapitalization: TextCapitalization.words,
      errorAnimationDuration: 500,
      cursorHeight: 25,
      cursorColor: AppTheme.blue,
      textInputAction: TextInputAction.done,
      obscureText: false,
        appContext: context,
        length: 4,
        onChanged: (value){

        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: AppTheme.blue),
            title: Image.asset('assets/findme_logo.png'),
            centerTitle: true,
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text('OTP', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 25, color: AppTheme.blue)),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/verificationlogo.png'
                        ),
                      )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: Text('Verification Code', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 25, color: AppTheme.blue),),
                ),
                SizedBox(height: 15,),
                Align(
                  alignment: Alignment.center,
                  child: Text('We have Send the verification Code to \n\n'
                      '               your Mobile Number', style: AppTheme.greyTextStyle),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('+234 8034 345 3456', style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 18, color: AppTheme.blue),),
                      SizedBox(width: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height /40,
                        width: MediaQuery.of(context).size.height / 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/edit.png'
                            ),
                            fit: BoxFit.cover,
                          )
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                optWidget(),
                SizedBox(height: 30,),
                CustomButton(
                    decorationColor: AppTheme.blue,
                    buttonHeight: 48,
                    borderColor: AppTheme.blue,
                    buttonRadius: 10,
                    buttonText: ('Submit & Continue'),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>DashBoard()));
                    }
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Didn't receive an OTP?", style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Poppins', color: AppTheme.blue
                      )),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));
                        },
                        child: Text('Resend', style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Poppins', color: AppTheme.blue, decoration: TextDecoration.underline
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
