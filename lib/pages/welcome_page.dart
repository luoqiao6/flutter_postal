import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';

class WelcomePage extends StatefulWidget {

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double _imgHeight = screenHeight * 0.4427;

    return Scaffold(
      backgroundColor: PostalColors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Stack(
                  //alignment: AlignmentDirectional.topStart,
                  children: <Widget>[

                    Container(
                      //color:PostalColors.blue,
                      child: SvgPicture.asset(
                        'res/images/background_img.svg',
                        width: screenWidth,
                        //height: 401,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 0),
                      //color: PostalColors.blue,
                      child: Container(
                        padding: EdgeInsets.only(top: 88),
                        decoration: BoxDecoration(

                        ),
                        child: SvgPicture.asset(
                          'res/images/welcome_img.svg',
                          //width: screenWidth,
                          height: _imgHeight,
                        ),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                    child: Text('Welcome to Postal', style: PostalTextStyles.googleSansBold27Blue,),
                  ),
                )
                ,

                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Container(
                    child: Text('Wa are here to help you to get', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    child: Text('the better shipping service', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child: Text('To track your first package press', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),



              ],

            ),
          ),

          Positioned(
            bottom: 0,
            child: PostalBottomAppBar(),
          ),

        ],
      ),

      //bottomNavigationBar: PostalBottomAppBar(),

    );
  }
}