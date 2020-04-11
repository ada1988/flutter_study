import "package:flutter/material.dart";
import 'package:reyuan_version/business/mine/pages/mine_real_auth_page.dart';

import 'package:reyuan_version/common/res/resources.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_card.dart';

class MineAuthPage extends StatefulWidget {
  @override
  _MineAuthPageState createState() => _MineAuthPageState();
}

class _MineAuthPageState extends State<MineAuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned.fill(
            top: 0,
            child: Container(
                color: new Color(0xffF5F6F6),
                child: Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/mine/attestation_bg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                      height: 240,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 80),
                          child: Text(
                            "立即认证 · 无限畅聊",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]))),
        Positioned(
          top: 54,
          child: Container(
            child: Row(
              children: <Widget>[
                GestureDetector(child: Container(
                  padding: EdgeInsets.only(left: 15),
                  child: const LoadAssetImage('mine/back_black',
                      height: 24.0, width: 24.0),
                ),onTap: () => {
                  AppNavigator.goBack(context)
                },),
                Container(
                  padding: EdgeInsets.only(left: 120),
                  child: Center(
                    child: Text("我的认证",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 200,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyCard(
                  child: Container(
                      height: 80.0,
                      width: 380,
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GestureDetector(child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: const LoadAssetImage(
                                  'mine/attestation_name',
                                  width: 28.0,
                                  height: 28.0),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              "实名认证",
                              style: TextStyle(color: Color(0xff181818)),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("审核中",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff999999))),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Opacity(
                                // 无点击事件时，隐藏箭头图标
                                opacity: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Images.arrowRight,
                                ),
                              ))
                        ],
                      ),onTap:()=>{
                          AppNavigator.pushResult(
                              context,
                              MineRealAuthPage(), (result) {
                            setState(() {
                              //_mineIntroduction = result.toString();
                            });
                          })
                      })),
                ))),
        Positioned(
            top: 300,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyCard(
                  child: Container(
                      height: 80.0,
                      width: 380,
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: const LoadAssetImage(
                                  'mine/attestation_education',
                                  width: 28.0,
                                  height: 28.0),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              "学历认证",
                              style: TextStyle(color: Color(0xff181818)),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("审核中",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff999999))),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Opacity(
                                // 无点击事件时，隐藏箭头图标
                                opacity: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Images.arrowRight,
                                ),
                              ))
                        ],
                      )),
                ))),
        Positioned(
            top: 400,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: MyCard(
                  child: Container(
                      height: 80.0,
                      width: 380,
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.only(right: 10),
                              child: const LoadAssetImage(
                                  'mine/education_house',
                                  width: 28.0,
                                  height: 28.0),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              "房产认证",
                              style: TextStyle(color: Color(0xff181818)),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("审核中",
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xff999999))),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Opacity(
                                // 无点击事件时，隐藏箭头图标
                                opacity: 1,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 2.0),
                                  child: Images.arrowRight,
                                ),
                              ))
                        ],
                      )),
                )))
      ],
    ));
    ;
  }
}
