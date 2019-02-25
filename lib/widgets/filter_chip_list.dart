import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_postal/utils/colors.dart';
import 'package:flutter_postal/utils/textStyles.dart';
import 'package:flutter_postal/widgets/postal_bottom_app_bar.dart';

class FilterChipList extends StatefulWidget {
  final bool pinned;
  final bool floating;
  final double minHeight;
  final double maxHeight;

  FilterChipList({
    this.pinned = true,
    this.floating = true,
    this.minHeight = 60.0,
    this.maxHeight = 200.0,
  });

  @override
  State<StatefulWidget> createState() {

    return _FilterChipListState();
  }
}

class _FilterChipListState extends State<FilterChipList> {

  @override
  Widget build(BuildContext context) {

    return SliverPersistentHeader(
      pinned: widget.pinned,
      floating: widget.floating,

      delegate: _SliverAppBarDelegate(
        minHeight: widget.minHeight,
        maxHeight: widget.maxHeight,

        child: Container(
          padding: EdgeInsets.only(top: 16),
          color: PostalColors.green,

          child: ListView.builder(
            itemCount: 8,
            //scrollDirection: Axis.horizontal,
            itemBuilder:(BuildContext context, int index) {
              return Container(
                height: 40,
                width: 80,
                color: PostalColors.blue,
              );
            }
          ),


        ),
      ),

    );

  }
}


class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}