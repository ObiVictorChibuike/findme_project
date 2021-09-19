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
            centerTitle: true,
            title: Text('Sign Up', style: TextStyle(fontSize: 16, fontFamily: 'Mulish', fontWeight: FontWeight.w700, color: AppTheme.blue),),
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: AppTheme.blue),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text('Welcome!', style:  AppTheme.headerTextStyle,),
                      SizedBox(height: 20,),
                      Text('Get started by creating your new account', style:  AppTheme.greyTextStyle,),
                      SizedBox(height: 30),
                      CustomFormField(
                        textColor: AppTheme.grey,
                        labelText: 'Enter your Full name',
                          validator: (value){

                          }
                      ),
                      SizedBox(height: 30,),
                      CustomFormField(
                          textColor: AppTheme.grey,
                          labelText: 'Enter email',
                          validator: (value){

                          }
                      ),
                      SizedBox(height: 30,),
                      CustomFormField(
                        keyboardType: TextInputType.phone,
                          textColor: AppTheme.grey,
                          labelText: 'Enter phone number',
                          validator: (value){

                          }
                      ),
                      SizedBox(height: 30,),
                      CustomPasswordFormField(
                        keyboardType: TextInputType.text,
                          labelText: 'Enter Password',
                          cursorColor: AppTheme.blue,
                          validator: (value){

                          }
                      ),
                      SizedBox(height: 30,),
                      CustomButton(
                          decorationColor: AppTheme.blue,
                          buttonHeight: 55,
                          borderColor: AppTheme.blue,
                          buttonRadius: 10,
                          buttonText: ('Register'),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));
                          }
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomIconButton(
                        buttonImage: Image.asset('assets/google.png'),
                        buttonWidth: MediaQuery.of(context).size.width / 3.5,
                        buttonRadius: 10,
                        onPressed: () {},
                        buttonHeight: 55,
                      ),
                      CustomIconButton(
                        buttonImage: Image.asset('assets/apple.png'),
                        buttonWidth: MediaQuery.of(context).size.width / 3.5,
                        buttonRadius: 10,
                        onPressed: () {},
                        buttonHeight: 55,
                      ),
                      CustomIconButton(
                        buttonImage: Image.asset('assets/facebook.png'),
                        buttonWidth: MediaQuery.of(context).size.width / 3.5,
                        buttonRadius: 10,
                        onPressed: () {},
                        buttonHeight: 55,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account ?', style: TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Mulish', color: AppTheme.blue
                      )),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>LoginScreen()));
                        },
                        child: Text('Log In', style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Mulish', color: AppTheme.blue,
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
