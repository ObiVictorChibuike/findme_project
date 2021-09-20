import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_button.dart';
import 'package:find_me_flutter_app/custom_widget/custom_formfield.dart';
import 'package:find_me_flutter_app/custom_widget/custom_icon_button.dart';
import 'package:find_me_flutter_app/screens/create_account.dart';
import 'package:find_me_flutter_app/screens/otp.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget loginWithEmailAndPassword(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        CustomFormField(
            textColor: AppTheme.grey,
            labelText: 'Enter Email address',
            validator: (value){
            }
        ),
        SizedBox(height: 25,),
        CustomPasswordFormField(
            labelText: 'Enter Password',
            cursorColor: AppTheme.blue,
            validator: (value){

            }
        ),
        SizedBox(height: 20,),
            ],
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
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30,),
                    Text('Login Account', style:  AppTheme.headerTextStyle,),
                    SizedBox(height: 20,),
                    Text('Fill the form below to login', style:  AppTheme.greyTextStyle,),
                  loginWithEmailAndPassword(context),
                  SizedBox(height: 10,),
                  CustomButton(
                  decorationColor: AppTheme.blue,
                  buttonHeight: 55,
                  borderColor: AppTheme.blue,
                  buttonRadius: 10,
                  buttonText: ('Login'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>OptVerificationScreen()));
                  }
              ),
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 73.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Forgot Password?', style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Mulish', color: AppTheme.blue
                          )),
                          InkWell(
                            onTap: (){

                            },
                            child: Text(' Click here', style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Mulish', color: AppTheme.blue,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                heightFactor: 2.3,
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 1.5,
                            width: MediaQuery.of(context).size.width / 2.8,
                            color: AppTheme.blue.withOpacity(0.1),
                          ),
                          Text('Or', style: AppTheme.blackTextStyle,),
                          Container(
                            height: 1.5,
                            width: MediaQuery.of(context).size.width / 2.8,
                            color: AppTheme.blue.withOpacity(0.1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomIconButton(
                            buttonImage: Image.asset('assets/google.png'),
                            buttonWidth: MediaQuery.of(context).size.width / 3.5,
                            buttonRadius: 10,
                            onPressed: (){

                            },
                            buttonHeight: 55,
                          ),
                          CustomIconButton(
                            buttonImage: Image.asset('assets/apple.png'),
                            buttonWidth: MediaQuery.of(context).size.width / 3.5,
                            buttonRadius: 10,
                            onPressed: (){

                            },
                            buttonHeight: 55,
                          ),
                          CustomIconButton(
                            buttonImage: Image.asset('assets/facebook.png'),
                            buttonWidth: MediaQuery.of(context).size.width / 3.5,
                            buttonRadius: 10,
                            onPressed: (){

                            },
                            buttonHeight: 55,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 84.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Don't have an account?", style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Mulish', color: AppTheme.blue
                          )),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreateAccount()));
                            },
                            child: Text(' Sign Up', style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Mulish', color: AppTheme.blue,
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
