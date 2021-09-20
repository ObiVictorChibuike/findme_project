import 'dart:async';
import 'package:find_me_flutter_app/constants/color_palettes.dart';
import 'package:find_me_flutter_app/screens/getstarted.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class CustomOnboardingScreen extends StatefulWidget {

  @override
  _CustomOnboardingScreenState createState() => _CustomOnboardingScreenState();
}

class _CustomOnboardingScreenState extends State<CustomOnboardingScreen> {

  int _currentPage = 0;
  final PageController _pageController = PageController(
      initialPage: 0
  );
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if(_currentPage < 4){
        _currentPage++;
      }
      else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300 ),
          curve: Curves.easeIn);
    }
    );
  }

  _onPageChanged(int index){
    setState(() {
      _currentPage = index;
    });
  }
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: slideList.length,
              itemBuilder: (ctx, i) => OnboardingWidgets(i),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child:
                Container(
                  margin: const EdgeInsets.only(bottom: 35),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      _currentPage == slideList.length - 1?
                      Container(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 5.1,
                        decoration: BoxDecoration(
                          color: AppTheme.lightBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 16,
                            width: MediaQuery.of(context).size.width / 7,
                            decoration: BoxDecoration(
                              color: AppTheme.lightBlue,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>GetStartedScreen()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward, size: 30, color: AppTheme.white,
                                )
                            ),
                          ),
                        ),
                      ) :
                      SmoothPageIndicator(
                          controller: _pageController,
                          count: slideList.length,
                          effect: ScrollingDotsEffect(
                            activeDotColor: AppTheme.lightBlue,
                            activeStrokeWidth: 2.6,
                            activeDotScale: 1.4,
                            maxVisibleDots: 5,
                            radius: 8,
                            spacing: 5,
                            dotHeight: 8,
                            dotWidth: 8,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingWidgets extends StatelessWidget {
  final int index;
  OnboardingWidgets(this.index);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget> [
                Container(
                  child: ShaderMask(
                    shaderCallback: (rect) => LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors:[Colors.black,Colors.transparent]
                    ).createShader(rect),
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(slideList[index].imageUrl!),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
                        ),
                      ),
                    ),
                  ),
                ),

                Align(alignment: Alignment.topCenter, //margin: EdgeInsets.only(top: 115),
                  child: Column(
                    children: [
                      SizedBox(height: 100,),
                      Image.asset('assets/find_me_logo.png'),
                      SizedBox(height: 300,),
                      Text(slideList[index].title!, style: TextStyle(fontWeight: FontWeight.w700, fontFamily: 'Mulish', fontSize: 34, color: AppTheme.white),),
                      SizedBox(height: 20,),
                      Text(slideList[index].subtitle!, style: TextStyle(fontSize: 16,fontFamily: 'Mulish', fontWeight: FontWeight.w400, color: AppTheme.white)),
                    ]
                  ),
                )
              ]
          )
      ),
    );
  }
}

class SlideDots extends StatelessWidget {
  bool? isActive;
  SlideDots({this.isActive});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: isActive! ? 8 : 8,
      width: isActive! ? 8 : 8,
      decoration: BoxDecoration(
          color: isActive! ? AppTheme.blue : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}

class Slide {
  final String? imageUrl;
  final String? title;
  final String? subtitle;

  Slide({
    @required this.subtitle,
    @required this.imageUrl,
    @required this.title,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/onboarding0.jpg',
    title: 'Starting Point',
      subtitle: '  The starting point of brand new\nexperience of business and service\ncategories booking in a customized\n                        platform'
  ),

  Slide(
    imageUrl: 'assets/onboarding1.jpg',
    title: 'Jobs',
      subtitle:'  Find verified job vacancies, Post\nyour CV anywhere in the universe\n                    and lots more'
  ),

  Slide(
    imageUrl: 'assets/onboarding2.jpg',
    title: 'Places',
      subtitle:'   Discover the places in a new\ncity and book, order and go there'
  ),
  Slide(
    imageUrl: 'assets/onboarding3.jpg',
    title: 'Artisan & Services',
      subtitle:'      Find the best of artisan and\nservices near you and with ratings\n                       & reviews '
  ),
  Slide(
    imageUrl: 'assets/onboarding4.jpg',
    title: 'Market Place',
      subtitle:'  Go to markets in your city and\nshop from verified market vendors\n           anywhere in the world'
  ),
];

