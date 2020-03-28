import 'dart:math' as math;
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver Demo App Yeaah',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Slivers App Demo'),
          centerTitle: true,
          elevation: 0,
        ),
        body: CollapsingList(),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(
      {@required this.minHeight,
      @required this.maxHeight,
      @required this.child});

  final double minHeight, maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkoffset, bool overlapsContetnt) {
    return GestureDetector(child: SizedBox.expand(child: child), onTap: () {
      print('clicked');
    },);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingList extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
          minHeight: 60.0,
          maxHeight: 200.0,
          child: Container(
              color: Colors.lightBlue, child: Center(child: Text(headerText)))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('Header Section 1'),
        SliverGrid.count(
          crossAxisCount: 3,
          children: <Widget>[
            Container(color: Colors.red, height: 150.0),
            Container(color: Colors.purple, height: 150.0),
            Container(color: Colors.green, height: 150.0),
            Container(color: Colors.orange, height: 150.0),
            Container(color: Colors.yellow, height: 150.0),
            Container(color: Colors.pink, height: 150.0),
            Container(color: Colors.cyan, height: 150.0),
            Container(color: Colors.indigo, height: 150.0),
            Container(color: Colors.blue, height: 150.0),
          ],
        ),
        makeHeader('Header Section 2'),
        SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              Container(color: Colors.red),
              Container(color: Colors.purple),
              Container(color: Colors.green),
              Container(color: Colors.orange),
              Container(color: Colors.yellow),
            ]),
            itemExtent: 150.0),
        makeHeader('Header Section 3'),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              color: Colors.teal[100 * (index % 9)],
              child: Text('Grid item $index'),
            );
          }, childCount: 20),
        ),
        makeHeader('Header Section 4'),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(color: Colors.pink, height: 150.0),
          Container(color: Colors.cyan, height: 150.0),
          Container(color: Colors.indigo, height: 150.0),
          Container(color: Colors.blue, height: 150.0),
        ]))
      ],
    );
  }
}
