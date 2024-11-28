import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyNestedScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              expandedHeight: 100,
              title: Text(
                'MySliverAppBar',
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
