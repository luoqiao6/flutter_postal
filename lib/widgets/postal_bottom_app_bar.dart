import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';

class PostalBottomAppBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _PostalBottomAppBarState();
  }

}

class _PostalBottomAppBarState extends State<PostalBottomAppBar> {

  @override
  Widget build(BuildContext context) {

    Widget content = Container(
      width: MediaQuery.of(context).size.width,
      height: 92,
      //color: PostalColors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Container(
                alignment: Alignment.centerRight,
                height: 33.66,
                decoration: BoxDecoration(
                ),
                child: SvgPicture.asset(
                  'res/images/package_icon.svg',
                  //width: screenWidth,
                  //height: _imgHeight,
                ),
              ),
            ),
          ),

          Expanded(
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


          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Container(
                height: 24.68,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                ),
                child: SvgPicture.asset(
                  'res/images/user_icon.svg',
                  //width: screenWidth,
                  //height: _imgHeight,
                ),
              ),
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