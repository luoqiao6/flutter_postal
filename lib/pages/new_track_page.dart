import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';

class NewTrackPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NewTrackPageState();
  }
}

class _NewTrackPageState extends State<NewTrackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PostalColors.extraLightBlue247,
      body: Stack(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 35, right: 35),
              child: Column(
                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.only(top: 50),
//                  ),

                  Container(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      'New Track',
                      style: PostalTextStyles.googleSansMedium29Blue,
                    ),
                  ),


                  /// Field Track number
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 30),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Track number',
                            style: PostalTextStyles.googleSansMedium16Blue,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),

                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),

//                            border: Border.all(
//                              color: PostalColors.extraLightBlue209,
//                              width: 1,
//                            ),

                            color: PostalColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: PostalColors.black242,
                                offset: Offset.zero,
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],

                          ),
                          child: TextField(
                            scrollPadding: EdgeInsets.all(0.0),
                            controller: TextEditingController(),
                            style: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                            //decoration: InputDecoration.collapsed(),
                            decoration: InputDecoration(
                              hintText: '0505055559845',
                              hintStyle: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                              contentPadding: EdgeInsets.only(top: 14,bottom: 16, left: 24),
                              //contentPadding: EdgeInsets.symmetric(vertical: 0),
                              border: InputBorder.none,
                              //filled: true,
                              //fillColor: PostalColors.white,

//                              border: OutlineInputBorder(
//                                borderRadius: BorderRadius.all(
//                                  Radius.circular(24),
//                                ),
//                                borderSide: BorderSide(
//                                  color: PostalColors.extraLightBlue209,
//                                  width: 1,
//                                )
//                              ),

                            ),

                          ),
                        ),


                      ],
                    ),
                  ),

                  /// Field Store Supplier
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 30),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Store Supplier',
                            style: PostalTextStyles.googleSansMedium16Blue,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),

                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),

                            color: PostalColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: PostalColors.black242,
                                offset: Offset.zero,
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],

                          ),
                          child: TextField(
                            scrollPadding: EdgeInsets.all(0.0),
                            controller: TextEditingController(),
                            style: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                            //decoration: InputDecoration.collapsed(),
                            decoration: InputDecoration(
                              hintText: 'ebay.com',
                              hintStyle: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                              contentPadding: EdgeInsets.only(top: 14,bottom: 16, left: 24),
                              //contentPadding: EdgeInsets.symmetric(vertical: 0),
                              border: InputBorder.none,
                            ),

                          ),
                        ),


                      ],
                    ),
                  ),

                  /// Delivery Type
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 30),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Delivery Type',
                            style: PostalTextStyles.googleSansMedium16Blue,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),

                        Container(
                          height: 60,
                          //padding: EdgeInsets.only(left: 0,right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),

                            color: PostalColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: PostalColors.black242,
                                offset: Offset.zero,
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],

                          ),
                          child: Row(
                            children: <Widget>[

                              Expanded(
                                child: TextField(
                                  scrollPadding: EdgeInsets.all(0.0),
                                  controller: TextEditingController(),
                                  style: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                                  //decoration: InputDecoration.collapsed(),
                                  textAlign: TextAlign.center,

                                  decoration: InputDecoration(
                                    hintText: 'Pickup',
                                    hintStyle: PostalTextStyles.googleSansMedium15BlueW600,
                                    contentPadding: EdgeInsets.only(top: 14,bottom: 16, left: 24),
                                    //contentPadding: EdgeInsets.symmetric(vertical: 0),
                                    border: InputBorder.none,
                                  ),

                                ),
                              ),


                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 6,right: 6),
                                  child: Container(
                                    height: 48,
                                    alignment: Alignment.center,
                                    //padding: EdgeInsets.only(left: 6,right: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(24),
                                      ),

                                      //color: PostalColors.white,
                                      gradient: LinearGradient(
                                          colors: [
                                            PostalColors.croci,
                                            PostalColors.jacinth
                                          ]
                                      ),

                                    ),
                                    child: Text('Warehouse', style: PostalTextStyles.googleSansMediumBold15White,),
                                  ),
                                ),
                              ),



                            ],
                          )
                        ),


                      ],
                    ),
                  ),


                  /// Field Expected Date of Delivery
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 30),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Expected Date of Delivery',
                            style: PostalTextStyles.googleSansMedium16Blue,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),

                        Container(
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(24),
                            ),

                            color: PostalColors.white,
                            boxShadow: [
                              BoxShadow(
                                color: PostalColors.black242,
                                offset: Offset.zero,
                                blurRadius: 2,
                                spreadRadius: 0,
                              ),
                            ],

                          ),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  enabled:false,
                                  scrollPadding: EdgeInsets.all(0.0),
                                  //controller: TextEditingController(),
                                  style: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                                  //decoration: InputDecoration.collapsed(),
                                  decoration: InputDecoration(
                                    hintText: '07/12/2018',
                                    hintStyle: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                                    contentPadding: EdgeInsets.only(top: 14,bottom: 16, left: 24),
                                    //contentPadding: EdgeInsets.symmetric(vertical: 0),
                                    border: InputBorder.none,
                                  ),

                                ),
                              ),

                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(right: 20),
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    'res/images/calendar_icon.svg',
                                    //width: 20,
                                    height: 20,
                                  ),
                                ),
                              ),

                            ],
                          )
                        ),

                      ],
                    ),
                  ),


                  /// Field Notes For Packages
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          //padding: EdgeInsets.only(top: 30),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Notes For Packages',
                            style: PostalTextStyles.googleSansMedium16Blue,
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 12),
                        ),

                        Container(
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(24),
                              ),

                              color: PostalColors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: PostalColors.black242,
                                  offset: Offset.zero,
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                ),
                              ],

                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextField(
                                    //enabled:false,
                                    scrollPadding: EdgeInsets.all(0.0),
                                    //controller: TextEditingController(),
                                    style: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                                    //decoration: InputDecoration.collapsed(),
                                    decoration: InputDecoration(
                                      hintText: 'Call for david when deliver',
                                      hintStyle: PostalTextStyles.googleSansMedium16ExtraLightBlue209,
                                      contentPadding: EdgeInsets.only(top: 14,bottom: 16, left: 24),
                                      //contentPadding: EdgeInsets.symmetric(vertical: 0),
                                      border: InputBorder.none,
                                    ),

                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.only(right: 20),
                                    alignment: Alignment.centerRight,
                                    child: SvgPicture.asset(
                                      'res/images/note_icon.svg',
                                      //width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),

                              ],
                            )
                        ),

                      ],
                    ),
                  ),

                  /// submit button
                  Padding(
                    padding: EdgeInsets.only(top: 26),
                    child: GestureDetector(
                      onTap: () {
                        print('sumit');
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
                        child: Text('Submit', style: PostalTextStyles.googleSansMedium15White,),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: PostalBottomAppBar(),
          ),
        ],
      ),
    );
  }
}
