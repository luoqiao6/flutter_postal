import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';
import 'package:flutter_postal/widgets/filter_chip_list.dart';

class PackageList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PackageListState();
  }
}

class _PackageListState extends State<PackageList> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double paddingWidth = 20;
    double cardOuterWidth = screenWidth - paddingWidth * 2;
    double cardInnerWidth = cardOuterWidth - 9;
    double printWidth = cardOuterWidth - 18 * 2;

    return Scaffold(
      //backgroundColor: PostalColors.extraLightBlue247,
      body: Stack(
        children: <Widget>[

          /// Title and Card List
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: CustomScrollView(
                slivers: <Widget>[

                  SliverPadding(
                    padding: EdgeInsets.only(top: 50),
                  ),

                  /// Title
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        alignment: Alignment.center,
                        //padding: EdgeInsets.only(top: 50),
                        child: Text(
                          'Packages',
                          style: PostalTextStyles.googleSansMedium29Blue,
                        ),
                      ),
                    ]),
                  ),

                  SliverPadding(
                    padding: EdgeInsets.only(top: 70),
                  ),

                  /// Card List
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {

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
                                      padding: EdgeInsets.only(
                                          left: 8,
                                          right: 8,
                                          top: 8,
                                          bottom: 10),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          title,
                                          style: PostalTextStyles
                                              .googleSansMedium18BlueW600,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, bottom: 10),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'Jul 12, 2018',
                                                style: PostalTextStyles
                                                    .googleSansMedium12BlueW600,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                '16:00',
                                                style: PostalTextStyles
                                                    .googleSansMedium12BlueW600,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                '--',
                                                style: PostalTextStyles
                                                    .googleSansMedium12BlueW600,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                '19:00',
                                                style: PostalTextStyles
                                                    .googleSansMedium12BlueW600,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                '00000US5576',
                                                style: PostalTextStyles
                                                    .googleSansMedium12BlueW600,
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
                                              color: PostalColors
                                                  .extraLightBlue230,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    /// ////

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10,
                                          left: 8,
                                          right: 8,
                                          bottom: 8),
                                      child: Container(
                                        width: printWidth,
                                        child: Row(
                                          children: <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 0, right: 10),
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
                                                  padding: EdgeInsets.only(
                                                      bottom: 6),
                                                  child: Row(
                                                    children: <Widget>[
                                                      Container(
                                                        width: 11,
                                                        height: 11,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              PostalColors.red,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 158,
                                                        height: 3,
                                                        decoration:
                                                            BoxDecoration(
                                                                border: Border(
                                                                    bottom:
                                                                        BorderSide(
                                                          color: PostalColors
                                                              .extraLightBlue230,
                                                          style:
                                                              BorderStyle.solid,
                                                          width: 2,
                                                        ))),
                                                      ),
                                                      Container(
                                                        width: 11,
                                                        height: 11,
                                                        decoration:
                                                            BoxDecoration(
                                                                //color: PostalColors.white,
                                                                shape: BoxShape
                                                                    .circle,
                                                                border:
                                                                    Border.all(
                                                                  color: PostalColors
                                                                      .extraLightBlue139,
                                                                  width: 2,
                                                                )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: printWidth - 51,
                                                  child: Row(
                                                    children: <Widget>[
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                            '811 Orlancdo, FL',
                                                            style: PostalTextStyles
                                                                .googleSansMedium12ExtraBlue139W600,
                                                            //textAlign: TextAlign.center,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                            '389 Miami, FL',
                                                            style: PostalTextStyles
                                                                .googleSansMedium12ExtraBlue139W600,
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
                      },

                      childCount: 30,

                      ///
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// Filter List

          Padding(
            padding: EdgeInsets.only(top: 104),
            child: Container(
              height: 33,
              child: CustomScrollView(
                scrollDirection: Axis.horizontal,
                slivers: <Widget>[
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        width: 107,
                        height: 33,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: PostalColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(33),
                          ),
                        ),
                        child: Text(
                          'All',
                          style: PostalTextStyles.googleSansMedium14BlueW600,
                        ),
                      ),

                      Container(
                        width: 107,
                        height: 33,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: PostalColors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                        child: Text(
                          'PACKING',
                          style: PostalTextStyles.googleSansMedium14WhiteW600,
                        ),
                      ),

                      Container(
                        width: 107,
                        height: 33,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: PostalColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(33),
                          ),
                        ),
                        child: Text(
                          'DELIVERED',
                          style: PostalTextStyles.googleSansMedium14BlueW600,
                        ),
                      ),

                      Container(
                        width: 107,
                        height: 33,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: PostalColors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(33),
                          ),
                        ),
                        child: Text(
                          'IN TRANSIT',
                          style: PostalTextStyles.googleSansMedium14BlueW600,
                        ),
                      ),

//                          Padding(
//                            padding: EdgeInsets.only(right: 10),
//                            child: Chip(
//                              backgroundColor: PostalColors.white,
//                              label: Text('All', style: PostalTextStyles.googleSansMedium14BlueW600,),
//                            ),
//                          ),
//
//                          Padding(
//                            padding: EdgeInsets.only(right: 10),
//                            child: Chip(
//                              backgroundColor: PostalColors.green,
//                              label: Text('PACKING', style: PostalTextStyles.googleSansMedium14WhiteW600,),
//                            ),
//                          ),
//
//                          Padding(
//                            padding: EdgeInsets.only(right: 10),
//                            child: Chip(
//                              backgroundColor: PostalColors.white,
//                              label: Text('DELIVERED', style: PostalTextStyles.googleSansMedium14BlueW600,),
//                            ),
//                          ),
//
//                          Padding(
//                            padding: EdgeInsets.only(right: 10),
//                            child: Chip(
//                              backgroundColor: PostalColors.white,
//                              label: Text('IN TRANSIT', style: PostalTextStyles.googleSansMedium14BlueW600,),
//                            ),
//                          ),
                    ]),
                  ),

//                  SliverList(
//                    delegate: SliverChildBuilderDelegate(
//                          (BuildContext context, int index) {
//
//                            return Padding(
//                              padding: EdgeInsets.only(right: 10),
//                              child: Chip(
//                                backgroundColor: PostalColors.white,
//                                label: Text('Aaron Burr'),
//                              ),
//                            );
//
//
////                        return Padding(
////                          padding: EdgeInsets.only(right: 10),
////                          child: Container(
////                            height: 33,
////                            width: 107,
////                            color: PostalColors.jacinth,
////                          ),
////                        );
//
//                      },
//
//                      childCount: 8, ///
//                    ),
//                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              height: 106,
              padding: EdgeInsets.only(top: 14),
              color: PostalColors.extraLightBlue247,
              child: PostalBottomAppBar(isPackageIconActive: true,),
            ),
          ),
        ],
      ),
    );
  }
}
