import "package:flutter/material.dart";

import 'package:reyuan_version/common/res/resources.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
class MineAuthPage extends StatefulWidget {
  @override
  _MineAuthPageState createState() => _MineAuthPageState();
}

class _MineAuthPageState extends State<MineAuthPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(centerTitle: "我的二维码"),
        body: MyScrollView(
            key: const Key('mine_qr_page'),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 70),
                    child: Center(
                        child: const LoadAssetImage('mine/qrcode_bg',
                            width: 327.0, height: 450.0)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 132),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: ClipOval(
                            child: const LoadAssetImage('mine/photo_default',
                                width: 56.0, height: 56.0),
                          ),
                        ),
                        Gaps.vGap12,
                        Center(
                          child: Text("Amie仙子",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        ),
                        Gaps.vGap50,
                        Center(
                          child: const LoadAssetImage('mine/qr_temp',
                                width: 160.0, height: 160.0),
                        ),
                        Gaps.vGap16,
                        Center(
                          child: Text("扫描上面的二维码，查看我的热缘",style: TextStyle(color:new Color(0xff181818),fontSize: 13,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Gaps.vGap32,
              Row(
                children: <Widget>[
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        const LoadAssetImage('mine/qrcode_save',
                            width: 36.0, height: 36.0),
                            Gaps.vGap10,
                        Text(
                          "保存",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: <Widget>[
                        const LoadAssetImage('mine/qrcode_share',
                            width: 36.0, height: 36.0),
                            Gaps.vGap10,
                        Text(
                          "分享",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              )
            ]));
  }
}