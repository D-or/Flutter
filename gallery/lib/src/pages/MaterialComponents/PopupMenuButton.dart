import 'package:flutter/material.dart';

import '../../components/Content.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class H_PopupMenuButton extends StatelessWidget {
  H_PopupMenuButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Content(
      title: 'PopupMenuButton',
      child: Container(
        height: 300.0,
        color: Colors.grey[200],
        child: Center(
          child: Container(
            color: Colors.grey[100],
            child: PopupMenuButton<WhyFarther>(
              onSelected: (WhyFarther result) {
                print(result);
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<WhyFarther>>[
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.harder,
                      child: Text('Working a lot harder'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.smarter,
                      child: Text('Being a lot smarter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.selfStarter,
                      child: Text('Being a self-starter'),
                    ),
                    const PopupMenuItem<WhyFarther>(
                      value: WhyFarther.tradingCharter,
                      child: Text('Placed in charge of trading charter'),
                    ),
                  ],
            ),
          ),
        ),
      ),
    );
  }
}
