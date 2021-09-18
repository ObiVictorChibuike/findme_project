import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_button.dart';
import 'package:find_me_flutter_app/custom_widget/custom_formfield.dart';
import 'package:find_me_flutter_app/custom_widget/custom_icon_button.dart';
import 'package:find_me_flutter_app/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
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
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Create Account', style:  AppTheme.headerTextStyle,),
                  SizedBox(height: 10,),
                  Text('Welcome, Personalize your profile experience', style:  AppTheme.greyTextStyle,),
                  SizedBox(height: 30),
                  Text('Name', style:  AppTheme.greyBoldTextStyle,),
                  SizedBox(height: 10),
                  CustomFormField(
                      focusedBorderColor: AppTheme.blue,
                      enabledBorderColor: AppTheme.blue,
                    textColor: AppTheme.grey,
                    labelText: 'Enter full name',
                      validator: (value){

                      }
                  ),
                  SizedBox(height: 25,),
                  Text('Email', style:  AppTheme.greyBoldTextStyle,),
                  SizedBox(height: 10),
                  CustomFormField(
                      focusedBorderColor: AppTheme.blue,
                      enabledBorderColor: AppTheme.blue,
                      textColor: AppTheme.grey,
                      labelText: 'Enter email',
                      validator: (value){

                      }
                  ),
                  SizedBox(height: 25,),
                  Text('Phone Number', style:  AppTheme.greyBoldTextStyle,),
                  SizedBox(height: 10),
                  CustomFormField(
                      focusedBorderColor: AppTheme.blue,
                      enabledBorderColor: AppTheme.blue,
                      textColor: AppTheme.grey,
                      labelText: 'Enter phone number',
                      validator: (value){

                      }
                  ),
                  SizedBox(height: 25,),
                  Text('Password', style:  AppTheme.greyBoldTextStyle,),
                  SizedBox(height: 10),
                  CustomPasswordFormField(
                      labelText: 'Password',
                      cursorColor: AppTheme.blue,
                      focusedBorderColor: AppTheme.blue,
                      enabledBorderColor: AppTheme.blue,
                      validator: (value){

                      }
                  ),
                  SizedBox(height: 40,),
                  CustomButton(
                      decorationColor: AppTheme.blue,
                      buttonHeight: 45,
                      borderColor: AppTheme.blue,
                      buttonRadius: 10,
                      buttonText: ('Create Account'),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));
                      }
                  ),
                  SizedBox(
                    height: 10,
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
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Already Registered ?', style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Poppins', color: AppTheme.blue
                        )),
                        InkWell(
                          onTap: (){},
                          child: Text('Login', style: TextStyle(
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
        ),
    );
  }
}
