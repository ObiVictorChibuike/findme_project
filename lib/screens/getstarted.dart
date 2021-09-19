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
            title: Image.asset('assets/appbarlogo.png'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Lets get started",
                        style: AppTheme.headerTextStyle,
                      ),
                    )),
                SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Select your account to sign in",
                        style: AppTheme.greyTextStyle,
                      ),
                    )),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 0.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 2.7,
                              width: MediaQuery.of(context).size.height / 4.5,
                              decoration: BoxDecoration(
                                  color: AppTheme.white,
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage('assets/vendor.png'),
                                      fit: BoxFit.cover)),
                              child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, bottom: 18),
                                    child: Text(
                                      'User',
                                      style: AppTheme.whiteHeaderTextStyle,
                                    ),
                                  )),
                            ),
                            SizedBox(height: 10,),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            CreateAccount()));
                              },
                              child: Text('SignUp/Login as user',
                                  style: AppTheme.greyTextStyle),
                            ),
                          ],
                        ),
                        SizedBox(width: 15,),
                        Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height / 3.5,
                              width: MediaQuery.of(context).size.width / 2.65,
                              decoration: BoxDecoration(
                                  color: AppTheme.nearlyWhite,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage('assets/vendor.png'),
                                      fit: BoxFit.cover)),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 8.0, left: 18),
                                      child: Text(
                                        'Vendor',
                                        style: AppTheme.whiteHeaderTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5,),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            CreateAccount()));
                              },
                              child: Text('Sign up as vendor',
                                  style: AppTheme.greyTextStyle),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: CustomButton(
                      decorationColor: AppTheme.blue,
                      buttonHeight: 55,
                      borderColor: AppTheme.blue,
                      buttonRadius: 10,
                      textFontSize: 17,
                      buttonText: ('Login'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    CreateAccount()));
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 1.5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        color: AppTheme.blue.withOpacity(0.1),
                      ),
                      Text(
                        'Or',
                        style: AppTheme.blackTextStyle,
                      ),
                      Container(
                        height: 1.5,
                        width: MediaQuery.of(context).size.width / 2.5,
                        color: AppTheme.blue.withOpacity(0.1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height/14,
                    width: MediaQuery.of(context).size.width,
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
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 95.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height /28,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Sign up as a',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: 'Mulish',
                                color: AppTheme.blue)),
                        InkWell(
                          onTap: () {},
                          child: Text('Findme Agent?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  fontFamily: 'Mulish',
                                  color: AppTheme.blue,
                                  )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,)
              ],
            ),
          ),
        ));
  }
}
