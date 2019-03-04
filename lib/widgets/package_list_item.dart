import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';

class PackageListItem extends StatelessWidget {

  final int index;
  final double printWidth;

  PackageListItem({@required this.index, @required this.printWidth});


  @override
  Widget build(BuildContext context) {

    Widget icon;
    String title;

    if (index % 2 == 1) {
      title = 'Surface Studio';
      icon = Container(
        child: SvgPicture.asset(
          'res/images/truck_icon.svg',
          width: 41,
          //height: 401,
        ),
      );
    } else {
      title = 'Garage Stuff';
      icon = Container(
        child: SvgPicture.asset(
          'res/images/archive_icon.svg',
          width: 41,
          color: PostalColors.blue,
          //height: 401,
        ),
      );
    }

    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 2, right: 3, top: 5, bottom: 3),
          child: Container(
            height: 133,
            decoration: BoxDecoration(
              color: PostalColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(11),
              ),
//                                  border: Border.all(
//                                    color: PostalColors.extraLightBlue227,
//                                  ),
            ),

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      style: PostalTextStyles.googleSansMedium18BlueW600,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Jul 12, 2018',
                            style: PostalTextStyles.googleSansMedium12BlueW600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '16:00',
                            style: PostalTextStyles.googleSansMedium12BlueW600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '--',
                            style: PostalTextStyles.googleSansMedium12BlueW600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '19:00',
                            style: PostalTextStyles.googleSansMedium12BlueW600,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '00000US5576',
                            style: PostalTextStyles.googleSansMedium12BlueW600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// 分割线
                Padding(
                  padding:
                  EdgeInsets.only(left: 5, right: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: PostalColors.extraLightBlue230,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),

                /// ////

                Padding(
                  padding: EdgeInsets.only(top: 10, left: 16, right: 12, bottom: 8),
                  child: Container(
                    width: printWidth,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0, right: 10),
                          child: icon,
//                                              Container(
//                                                child: SvgPicture.asset(
//                                                  'res/images/truck_icon.svg',
//                                                  width: 41,
//                                                  //height: 401,
//                                                ),
//                                              ),
                        ),

                        /// 分割线下面右侧

                        Column(
                          children: <Widget>[

                            Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 11,
                                    height: 11,
                                    decoration: BoxDecoration(
                                      color: PostalColors.red,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  Container(
                                    width: 158,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: PostalColors.extraLightBlue230,
                                          style: BorderStyle.solid,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 11,
                                    height: 11,
                                    decoration: BoxDecoration(
                                      //color: PostalColors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: PostalColors.extraLightBlue139,
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: printWidth - 54,
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '811 Orlancdo, FL',
                                        style: PostalTextStyles.googleSansMedium12ExtraBlue139W600,
                                        //textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '389 Miami, FL',
                                        style: PostalTextStyles.googleSansMedium12ExtraBlue139W600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            'res/images/corner_icon.svg',
            width: 46,
            //height: 401,
          ),
        ),
      ],
    );


  }
}