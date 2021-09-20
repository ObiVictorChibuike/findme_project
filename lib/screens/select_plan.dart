import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/custom_widget/custom_gridview.dart';
import 'package:find_me_flutter_app/screens/payment_methods.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List plan = [
    {
      "plan": "Basic",
    },
    {
      "plan": "Standard",
    },
    {
      "plan": "Gold",
    },
    {
      "plan": "Enterprise",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
        bottom: false,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: AppTheme.blue),
            title: Image.asset('assets/appbarlogo.png'),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.nearlyWhite,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Register', style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Mulish', fontSize: 20,color: AppTheme.blue),),
                SizedBox(height: 5,),
                Text('Select plan', style: TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Mulish', fontSize: 16,color: AppTheme.blue),),
                SizedBox(height: 50,),
                GridView(
                  primary: false,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 18,
                      mainAxisExtent: 250
                  ),
                  children:
                  List.generate(plan.length, (index) {
                    final data = plan[index]!;
                    return CustomGrid(
                      child: Text(data["plan"], textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Mulish', fontWeight: FontWeight.w400, fontSize: 24,color: AppTheme.blue ),),
                      callBack: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PaymentMethod()));
                      },
                    );
                  }
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
