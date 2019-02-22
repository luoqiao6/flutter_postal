import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';

class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double _imgHeight = screenHeight * 0.4160;

    return Scaffold(
      backgroundColor: PostalColors.white,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                Stack(
                  //alignment: AlignmentDirectional.bottomCenter,
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
                      padding: EdgeInsets.only(top: 0),
                      alignment: AlignmentDirectional.center,
                      //color: PostalColors.blue,
                      child: Container(
                        padding: EdgeInsets.only(top: 80),
                        decoration: BoxDecoration(
                          //color: Colors.white,
//                            border: Border.all(
//                              color: PostalColors.green,
//                              width: 2,
//                            ),
                            //shape: BoxShape.circle
                        ),
                        child: SvgPicture.asset(
                          'res/images/profile_img.svg',
                          //width: screenWidth,
                          height: _imgHeight,
                        ),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    child: Text('Profile', style: PostalTextStyles.googleSansBold27Blue,),
                  ),
                ),

                /*
Store your GoPostaI in the cloud and have them backed up automatically
                * */

                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Container(
                    child: Text('Store your GoPostaI in the cloud', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    child: Text('and have them backed up', style: PostalTextStyles.googleSansMedium15GrayBlue,),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 2),
                  child: Container(
                    child: Text('automatically', style: PostalTextStyles.googleSansMedium15GrayBlue,),
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
                      child: Text('Sign up with email', style: PostalTextStyles.googleSansMedium15White,),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 14),
                  child: Container(
                    child: Text('I have an account', style: PostalTextStyles.googleSansMedium15Blue,),
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
