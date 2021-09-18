import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  height: MediaQuery.of(context).size.height / 18,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppTheme.grey.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
