import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';
import 'package:flutter_postal/widgets/package_list_item.dart';

class PackageListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PackageListPageState();
  }
}

class _PackageListPageState extends State<PackageListPage> {
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
              padding: EdgeInsets.only(left: 0, right: 0),
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
                    padding: EdgeInsets.only(top: 30),
                  ),

                  /// Filter Chips ////////////////////

                  SliverGrid.extent(
                    //crossAxisCount: 4,
                    maxCrossAxisExtent: 107,
                    childAspectRatio: 3.24,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,

                    children: <Widget>[
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


                    ],
                  ),


                  /// Card List
                  SliverPadding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                    sliver : SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {

                          return PackageListItem(index: index, printWidth: printWidth,);
                        },

                        childCount: 30,
                        ///
                      ),
                    ),
                  ),

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
