import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';

class UserPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _UserPageState();
  }
}

class _UserPageState extends State<UserPage> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double _imgHeight = screenHeight * 0.4160;

    return Scaffold(
      backgroundColor: PostalColors.extraLightBlue,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Stack(
                  //alignment: AlignmentDirectional.topCenter,
                  children: <Widget>[

                    Container(
                      //color:PostalColors.blue,
                      decoration: BoxDecoration(

                      ),
                      child: SvgPicture.asset(
                        'res/images/background_img.svg',
                        width: screenWidth,
                        //height: 401,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 80),
                      alignment: AlignmentDirectional.center,
                      //color: PostalColors.blue,
                      child: CircleAvatar(
                        radius: 71,
                        backgroundColor: PostalColors.white,

                        child: SvgPicture.asset(
                          'res/images/man_img.svg',
                          //width: screenWidth,
                          height: 181,
                        ),
                      ),
                    ),



                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    child: Text('Ramanyv', style: PostalTextStyles.googleSansBold27Blue,),
                  ),
                ),

                /*
5240 NW 163RD Street
Suite: 20, Miami Lakes. FL 33014

                * */

                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Container(
                    child: Text('5240 NW 163RD Street', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    child: Text('Suite: 20, Miami Lakes. FL 33014', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: GestureDetector(
                    onTap: () {
                      print('login');
                    },
                    child: Container(
                      width: 294,
                      height: 46,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        color: PostalColors.green,
                        borderRadius: BorderRadius.all(
                            Radius.circular(23)
                        ),
                      ),
                      child: Text('Settings', style: PostalTextStyles.googleSansMedium15White,),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 18),
                  child: GestureDetector(
                    onTap: () {
                      print('login');
                    },
                    child: Container(
                      width: 294,
                      height: 46,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        //color: PostalColors.green,
                        borderRadius: BorderRadius.all(
                            Radius.circular(23)
                        ),
                        border: Border.all(
                          color: PostalColors.extraLightPurple
                        )
                      ),
                      child: Text('Sign out', style: PostalTextStyles.googleSansMedium15Blue,),
                    ),
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