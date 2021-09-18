import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_button.dart';
import 'package:find_me_flutter_app/custom_widget/custom_icon_button.dart';
import 'package:find_me_flutter_app/screens/create_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: [
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text("Lets get started", style: AppTheme.headerTextStyle,),
                        )),
                    SizedBox(height: 5,),
                    Align(
                      alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text("Select your account to sign in", style: AppTheme.greyTextStyle,),
                        )),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.height /7,
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 18.0,bottom: 20),
                                child: Text('User', style: AppTheme.whiteHeaderTextStyle,),
                              )),
                        ),
                        SizedBox(height: 30,),
                        TextButton(
                          onPressed: (){},
                          child: Text('Sign up as user', style: AppTheme.greyTextStyle),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.height /4,
                          decoration: BoxDecoration(
                              color: AppTheme.nearlyWhite,
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/vendor.png'
                                  ),
                                  fit: BoxFit.cover
                              )
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0, left: 18),
                                  child: Text('Vendor', style: AppTheme.whiteHeaderTextStyle,),
                                ),
                              ],
                            ),
                          ),
                        ),

                        TextButton(
                          onPressed: (){},
                          child: Text('Sign up as vendor', style: AppTheme.greyTextStyle),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: CustomButton(
                  decorationColor: AppTheme.blue,
                    buttonHeight: 48,
                    borderColor: AppTheme.blue,
                    buttonRadius: 10,
                    buttonText: ('Login'),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreateAccount()));
                    }
                ),
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
                padding: const EdgeInsets.symmetric(horizontal: 85.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Sign up as a', style: TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Poppins', color: AppTheme.blue
                    )),
                    InkWell(
                      onTap: (){},
                      child: Text('Findme Agent?', style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Poppins', color: AppTheme.blue, decoration: TextDecoration.underline
                      )),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
