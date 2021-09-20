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
  late bool isLoginWithPhoneNumber = true;

  Widget loginWithPhoneNumber(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        CustomFormField(
            textColor: AppTheme.grey,
            labelText: '+234 8034 345 3456',
            validator: (value){

            }
        ),
        SizedBox(height: 100,),
      ],
    );
  }

  Widget loginWithEmailAndPassword(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        CustomFormField(
            textColor: AppTheme.grey,
            labelText: 'Amyparker007@gmail.com',
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
        SizedBox(height: 65,),
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
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: AppTheme.blue),
            title: Image.asset('assets/findme_logo.png'),
            centerTitle: true,
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text('Login Account', style:  AppTheme.headerTextStyle,),
                SizedBox(height: 10,),
                Text('We are happy to have you back', style:  AppTheme.greyTextStyle,),
                SizedBox(height: 30,),
                Container(
                  height: MediaQuery.of(context).size.height / 16,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      CustomButton(
                          onPressed: (){
                            setState(() {
                              isLoginWithPhoneNumber = true;
                            });
                          },
                        borderColor: isLoginWithPhoneNumber ? AppTheme.white : Colors.transparent,
                        decorationColor: isLoginWithPhoneNumber ? AppTheme.white : Colors.transparent,
                        buttonText: 'Email Address',
                        textColor: AppTheme.blue,
                        textFontSize: 13,
                        buttonHeight: 37,
                        buttonWidth: MediaQuery.of(context).size.width / 2.45,
                      ),
                        CustomButton(
                          onPressed: (){
                            setState(() {
                              isLoginWithPhoneNumber = false;
                            });
                          },
                          borderColor: isLoginWithPhoneNumber ? Colors.transparent : AppTheme.white,
                          decorationColor: isLoginWithPhoneNumber ? Colors.transparent : AppTheme.white,
                          buttonText: 'Phone Number',
                          textColor: AppTheme.blue,
                          textFontSize: 13,
                          buttonHeight: 37,
                          buttonWidth: MediaQuery.of(context).size.width / 2.45,
                        ),
                      ],
                    ),
                  ),
                ),
              isLoginWithPhoneNumber ? loginWithEmailAndPassword(context) : loginWithPhoneNumber(context),
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
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width / 2.8,
                  color: AppTheme.blue.withOpacity(0.6),
                ),
                Text('Or', style: AppTheme.blackTextStyle,),
                Container(
                  height: 1.5,
                  width: MediaQuery.of(context).size.width / 2.8,
                  color: AppTheme.blue.withOpacity(0.6),
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
                  buttonWidth: MediaQuery.of(context).size.width / 4.5,
                  buttonRadius: 10,
                  onPressed: (){

                  },
                  buttonHeight: 45,
                ),
                CustomIconButton(
                  buttonImage: Image.asset('assets/apple.png'),
                  buttonWidth: MediaQuery.of(context).size.width / 4.5,
                  buttonRadius: 10,
                  onPressed: (){

                  },
                  buttonHeight: 45,
                ),
                CustomIconButton(
                  buttonImage: Image.asset('assets/facebook.png'),
                  buttonWidth: MediaQuery.of(context).size.width / 4.5,
                  buttonRadius: 10,
                  onPressed: (){

                  },
                  buttonHeight: 45,
                ),
              ],
            ),
          ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Not registered yet ?', style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Poppins', color: AppTheme.blue
                      )),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreateAccount()));
                        },
                        child: Text('Create Account', style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Poppins', color: AppTheme.blue, decoration: TextDecoration.underline
                        )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
