import 'dart:ui';

import 'package:animated_sliverappbar_widgets/config.dart';
import 'package:animated_sliverappbar_widgets/icon_painters/category_icon_painter.dart';
import 'package:animated_sliverappbar_widgets/icon_painters/notification_icon_painter.dart';
import 'package:animated_sliverappbar_widgets/icon_painters/search_icon_painter.dart';
import 'package:flutter/material.dart';

const double _searchBarHeight = 54;
const double _searchBarVerticalMargin = 12;
const double _appBarCollapsedHeight =
    _searchBarHeight + _searchBarVerticalMargin * 2; // 78
const double _appBarExpandedHeight = 100 + _searchBarHeight; // 154

class SliverScaffold extends StatefulWidget {
  const SliverScaffold({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  _SliverScaffoldState createState() => _SliverScaffoldState();
}

class _SliverScaffoldState extends State<SliverScaffold> {
  final ScrollController _scrollController = ScrollController();

  // 0.0 -> Expanded
  double currentExtent = 0.0;

  double get minExtent => 0.0;
  double get maxExtent => _scrollController.position.maxScrollExtent;

  double get deltaExtent => maxExtent - minExtent;

  Curve get curve => Curves.easeOutCubic;
  // Curve get curve => Curves.easeOutQuart;

  // Curve get curve => Curves.easeOutQuint;
  // Curve get curve => Curves.easeOutExpo;
  // Curve get curve => Curves.easeOutCirc;
  // Curve get curve => Curves.fastLinearToSlowEaseIn;

  // Curve get curve => const Cubic(0.08, 0.79, 0, 0.81);

  double actionSpacing = 24;
  double iconStrokeWidth = 1.8;
  double titlePaddingHorizontal = 16;
  double titlePaddingTop = 74;

  final Tween<double> actionSpacingTween = Tween(begin: 24, end: 0);
  final Tween<double> iconStrokeWidthTween = Tween(begin: 1.8, end: 1.2);
  final Tween<double> titlePaddingHorizontalTween = Tween(begin: 16, end: 48);
  final Tween<double> titlePaddingTopTween = Tween(begin: 74, end: 12);

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (_, __) => [
        SliverAppBar(
          leading: Row(
            children: [
              SizedBox(width: actionSpacing),
              IconButton(
                onPressed: () {},
                splashRadius: 24,
                icon: CategoryIconPainter.getCustomPaint(iconStrokeWidth),
              ),
            ],
          ),
          leadingWidth: 74,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              splashRadius: 24,
              icon: NotificationIconPainter.getCustomPaint(iconStrokeWidth),
            ),
            SizedBox(width: actionSpacing),
          ],
          toolbarHeight: _appBarCollapsedHeight,
          collapsedHeight: _appBarCollapsedHeight,
          expandedHeight: _appBarExpandedHeight,
          flexibleSpace: FlexibleSpaceBar.createSettings(
            currentExtent: _appBarCollapsedHeight,
            minExtent: _appBarCollapsedHeight,
            maxExtent: _appBarExpandedHeight,
            toolbarOpacity: 1.0,
            child: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(
                top: titlePaddingTop,
                left: titlePaddingHorizontal,
                right: titlePaddingHorizontal,
              ),
              centerTitle: true,
              title: Column(
                children: [
                  SizedBox(
                    height: _searchBarHeight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.amber.shade100,
                        borderRadius: defaultBorderRadius,
                      ),
                      child: Row(
                        children: const [
                          SizedBox(width: 20),
                          SearchIconPainter.customPaint,
                          SizedBox(width: 16),
                          Text(
                            'Search',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0x90000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
          backgroundColor: primaryColor,
          elevation: 8,
          shadowColor: Colors.black45,
          pinned: true,
        ),
      ],
      body: widget.body,
    );
  }

  _scrollListener() {
    setState(() {
      currentExtent = _scrollController.offset;

      actionSpacing = _remapCurrentExtent(actionSpacingTween);
      iconStrokeWidth = _remapCurrentExtent(iconStrokeWidthTween);
      titlePaddingHorizontal = _remapCurrentExtent(titlePaddingHorizontalTween);
      titlePaddingTop = _remapCurrentExtent(titlePaddingTopTween);
    });
  }

  double _remapCurrentExtent(Tween<double> target) {
    final double deltaTarget = target.end! - target.begin!;

    double currentTarget =
        (((currentExtent - minExtent) * deltaTarget) / deltaExtent) +
            target.begin!;

    double t = (currentTarget - target.begin!) / deltaTarget;

    double curveT = curve.transform(t);

    return lerpDouble(target.begin!, target.end!, curveT)!;
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }
}
