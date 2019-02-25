import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/pages/package_list.dart';
import 'package:flutter_postal/pages/user_page.dart';

class PostalBottomAppBar extends StatefulWidget {
  final isPackageIconActive;
  final isUserIconActive;

  PostalBottomAppBar({
    this.isPackageIconActive = false,
    this.isUserIconActive = false,
  });

  @override
  State<StatefulWidget> createState() {

    return _PostalBottomAppBarState();
  }

}

class _PostalBottomAppBarState extends State<PostalBottomAppBar> {

  @override
  Widget build(BuildContext context) {

    Widget activePackageIcon = Container(
      width: 52,
      height: 52,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            PostalColors.blue,
            PostalColors.white,
          ],

        )
      ),
      child: Container(
        alignment: Alignment.topCenter,
        //height: 33.66,
        width: 30.66,
        decoration: BoxDecoration(
        ),
        child: SvgPicture.asset(
          'res/images/package_icon.svg',
          width: 30.66,
          //height: _imgHeight,
        ),
      ),
    );

    Widget inActivePackageIcon = Container(
      width: 52,
      height: 52,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
//          gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter,
//              colors: [
//                PostalColors.blue,
//                PostalColors.white,
//              ]
//          )
      ),
      child: Container(
        alignment: Alignment.topCenter,
        //height: 33.66,
        width: 30.66,
        decoration: BoxDecoration(
        ),
        child: SvgPicture.asset(
          'res/images/package_icon.svg',
          width: 30.66,
          //height: _imgHeight,
        ),
      ),
    );

    Widget activeUserIcon = Container(
      width: 52,
      height: 52,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                PostalColors.blue,
                PostalColors.white,
              ]
          )
      ),
      child: Container(
        //height: 24.68,
        width: 21.93,
        padding: EdgeInsets.only(top: 6),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
        ),
        child: SvgPicture.asset(
          'res/images/user_icon.svg',
          width: 21.93,
          //height: _imgHeight,
        ),
      ),
    );

    Widget inActiveUserIcon = Container(
      width: 52,
      height: 52,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
//          gradient: LinearGradient(
//              begin: Alignment.topCenter,
//              end: Alignment.bottomCenter,
//              colors: [
//                PostalColors.blue,
//                PostalColors.white,
//              ]
//          )
      ),
      child: Container(
        //height: 24.68,
        width: 21.93,
        padding: EdgeInsets.only(top: 6),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
        ),
        child: SvgPicture.asset(
          'res/images/user_icon.svg',
          width: 21.93,
          //height: _imgHeight,
        ),
      ),
    );

    Widget content = Container(
      width: MediaQuery.of(context).size.width,
      height: 92,
      //color: PostalColors.green,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 4),
              child: GestureDetector(
                onTap: () {
                  print('package list');

                  Navigator.of(context).pushReplacementNamed('/package_list');
                },
                child: widget.isPackageIconActive ? activePackageIcon : inActivePackageIcon,
              ),
//              Container(
//                alignment: Alignment.centerRight,
//                height: 33.66,
//                decoration: BoxDecoration(
//
//                ),
//                child: SvgPicture.asset(
//                  'res/images/package_icon.svg',
//                  //width: screenWidth,
//                  //height: _imgHeight,
//                ),
//              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/new');
              },
          child: Container(
            decoration: BoxDecoration(
            ),
            child: SvgPicture.asset(
              'res/images/add_icon.svg',
              //width: screenWidth,
              //height: _imgHeight,
              ),
            ),
          ),
          ),


          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 4),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/register');
                },
                child: widget.isUserIconActive ? activeUserIcon : inActiveUserIcon,
              ),
//              Container(
//                height: 24.68,
//                alignment: Alignment.centerLeft,
//                decoration: BoxDecoration(
//                ),
//                child: SvgPicture.asset(
//                  'res/images/user_icon.svg',
//                  //width: screenWidth,
//                  //height: _imgHeight,
//                ),
//              ),
            ),
          ),

        ],

      ),
    );

    return content;

//    return BottomAppBar(
//      elevation: 0,
//      color: PostalColors.grayBlue,
//      child: content,
//    );
  }
}