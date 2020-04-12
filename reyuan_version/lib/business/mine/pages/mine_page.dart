import 'package:flutter/material.dart';
import 'package:reyuan_version/business/mine/pages/mine_auth_page.dart';
import 'package:reyuan_version/business/mine/pages/mine_info_edit.dart';
import 'package:reyuan_version/business/mine/pages/mine_qr_page.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/common/res/resources.dart';
import 'package:reyuan_version/widgets/click_item.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
import 'package:reyuan_version/business/mine/pages/input_text_page.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  String _mineIntroduction = '资料完善度80%';

  @override
  Widget build(BuildContext context) {
    return MyScrollView(
        key: const Key('mine_page'),
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        children: [
          Gaps.vGap50,
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
            child: Row(
              children: <Widget>[
                ClipOval(
                  child: const LoadAssetImage('mine/photo_default',
                      width: 80.0, height: 80.0),
                ),
                Gaps.hGap8,
                Expanded(
                  // 合并Text的语义
                  child: MergeSemantics(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                                flex: 4,
                                child: Row(
                                  children: <Widget>[
                                    Text('Amie仙子',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      child: const LoadAssetImage(
                                          'mine/female_label',
                                          width: 18.0,
                                          height: 18.0),
                                    ),
                                  ],
                                )),

                            //Gaps.hGap16,
                            Opacity(
                              // 无点击事件时，隐藏箭头图标
                              opacity: 1,
                              child: Padding(
                                padding: EdgeInsets.only(top: 0.0),
                                child: Images.arrowRight,
                              ),
                            )
                          ],
                        ),
                        Gaps.vGap8,
                        Row(
                          children: <Widget>[
                            Text('29岁', style: TextStyle(fontSize: 14)),
                            Gaps.hGap10,
                            Gaps.vLineBlack,
                            Gaps.hGap10,
                            Text('杭州', style: TextStyle(fontSize: 14)),
                            Gaps.hGap10,
                            Gaps.vLineBlack,
                            Gaps.hGap10,
                            Text('互联网-设计师', style: TextStyle(fontSize: 14))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text('相册',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            content: "查看全部",
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '个人资料',
                    hintText: '这里有一段完美的简介…',
                    content: _mineIntroduction,
                  ), (result) {
                setState(() {
                  _mineIntroduction = result.toString();
                });
              });
            },
          ),
          Container(
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
            child: Wrap(
              runSpacing: 10,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const LoadAssetImage('mine/photo_default',
                          width: 64.0, height: 64.0)),
                ),
                GestureDetector(
                  // 选择图片
                  onTap: () {},
                  child: Container(
                    height: 64.0,
                    width: 64.0,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Color(0xffF9FAFC),
                        border: Border.all(
                          color: Color(0xffEAEDF3),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(3.0))),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const LoadAssetImage('mine/add_gray',
                            width: 36.0, height: 36.0)
                      ],
                    )),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border(
              bottom: Divider.createBorderSide(context, width: 0.6),
            )),
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child: const LoadAssetImage('mine/me_information',
                  width: 20.0, height: 20.0),
            ),
            title: '个人资料',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  MineInfoEditPage(), (result) {
                setState(() {
                  //_mineIntroduction = result.toString();
                });
              });
            },
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child: const LoadAssetImage('mine/me_vip',
                  width: 20.0, height: 20.0),
            ),
            title: '会员账户',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '个人资料',
                    hintText: '这里有一段完美的简介…',
                    content: _mineIntroduction,
                  ), (result) {
                setState(() {
                  _mineIntroduction = result.toString();
                });
              });
            },
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child: const LoadAssetImage('mine/me_invite',
                  width: 20.0, height: 20.0),
            ),
            title: '邀请有奖',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '个人资料',
                    hintText: '这里有一段完美的简介…',
                    content: _mineIntroduction,
                  ), (result) {
                setState(() {
                  _mineIntroduction = result.toString();
                });
              });
            },
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child: const LoadAssetImage('mine/me_attestation',
                  width: 20.0, height: 20.0),
            ),
            title: '我的认证',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  MineAuthPage(), (result) {
                setState(() {
                  //_mineIntroduction = result.toString();
                });
              });
            },
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child:
                  const LoadAssetImage('mine/me_qr', width: 20.0, height: 20.0),
            ),
            title: '我的二维码',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  MineQrPage(), (result) {
                setState(() {
                  //_mineIntroduction = result.toString();
                });
              });
            },
          ),
          Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            iconWidget: Container(
              padding: EdgeInsets.only(right: 10),
              child: const LoadAssetImage('mine/me_set',
                  width: 20.0, height: 20.0),
            ),
            title: '设置',
            content: _mineIntroduction,
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '个人资料',
                    hintText: '这里有一段完美的简介…',
                    content: _mineIntroduction,
                  ), (result) {
                setState(() {
                  _mineIntroduction = result.toString();
                });
              });
            },
          ),
        ]);
  }
}
