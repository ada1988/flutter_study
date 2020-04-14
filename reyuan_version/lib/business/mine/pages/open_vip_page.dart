import "package:flutter/material.dart";
import 'package:reyuan_version/common/res/resources.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_card.dart';

class OpenVipPage extends StatefulWidget {
  @override
  _OpenVipPageState createState() => _OpenVipPageState();
}

class _OpenVipPageState extends State<OpenVipPage> {
  bool check0 = true;
  bool check1 = false;
  bool check2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned.fill(
            top: 0,
            child: Container(
                color: Colors.white,
                child: Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/mine/vip_bg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                      height: 240,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ]))),
        //头部返回、标题
        Positioned(
          top: 54,
          child: Container(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                    padding: EdgeInsets.only(left: 15),
                    child: const LoadAssetImage('mine/back_black',
                        height: 24.0, width: 24.0),
                  ),
                  onTap: () => {AppNavigator.goBack(context)},
                ),
                Container(
                  padding: EdgeInsets.only(left: 120),
                  child: Center(
                    child: Text("开通会员",
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

        //会员价格 card
        Positioned(
            top: 128,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/mine/vip_banner_bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SizedBox(
                height: 164,
                width: MediaQuery.of(context).size.width,
              ),
            )),
        Positioned(
            top: 350,
            left: 20,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    _buildMyCard(check0, "12", "178", "14.83", 0),
                    SizedBox(
                      width: 10,
                    ),
                    _buildMyCard(check1, "3", "60", "20", 1),
                    SizedBox(
                      width: 10,
                    ),
                    _buildMyCard(check2, "1", "25", "25", 2),
                  ],
                ))),
        Positioned(
            top: 350,
            left: 85,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffFFAD00), Color(0xffFF4E02)]), // 渐变色
                    borderRadius: BorderRadius.only(
                        bottomLeft: new Radius.circular(25.0),
                        topRight: new Radius.circular(10.0))),
                alignment: Alignment.center,
                child: Text(
                  "推荐",
                  style: TextStyle(
                      fontSize: Dimens.font_sp12,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
            Positioned(
            top: 570,
             left: 120,
            child: Center(child: Text(
                  "您的会员将于2020-10-07 到期",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xff666666)),
                ),)),
        Positioned(
            top: 600,
            left: 20,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xffFFDD55), Color(0xffFFBB00)]), // 渐变色
                    borderRadius: BorderRadius.circular(25)),
                width: 335,
                alignment: Alignment.center,
                child: Text(
                  "立即开通",
                  style: TextStyle(
                      fontSize: Dimens.font_sp18,
                      color: Color(0xff181818),
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
      ],
    ));
  }
  /**
   * 选中页面
   */
  setCheck(int flag) {
    setState(() {
      if (flag == 0) {
        check0 = true;
        check1 = false;
        check2 = false;
      } else if (flag == 1) {
        check0 = false;
        check1 = true;
        check2 = false;
      } else if (flag == 2) {
        check0 = false;
        check1 = false;
        check2 = true;
      }
    });
  }

  _buildMyCard(
      bool check, String month, String money, String moneyMonth, int flag) {
    return GestureDetector(
        onTap: () => {setCheck(flag)},
        child: MyCard(
          shadowColor: check ? Color(0xffFF8C00) : null,
          child: Container(
              height: 142.0,
              width: 105,
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: new RichText(
                            text: new TextSpan(
                                text: month,
                                style: new TextStyle(
                                    fontSize: 24.0,
                                    color: check
                                        ? Color(0xffFF8C00)
                                        : Color(0xff181818),
                                    inherit: false),
                                children: <TextSpan>[
                              new TextSpan(
                                  text: '个月',
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    color: check
                                        ? Color(0xffFF8C00)
                                        : Color(0xff181818),
                                  )),
                            ]))),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6),
                      child: Text(
                        "¥" + money,
                        style: TextStyle(
                            fontSize: 15,
                            color:
                                check ? Color(0xffFF8C00) : Color(0xff181818)),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 19),
                      child: Text("¥" + moneyMonth + "/月",
                          style: TextStyle(
                            fontSize: 13,
                            color:
                                check ? Color(0xffCCCCCC) : Color(0xff181818),
                          )),
                    ),
                  ),
                ],
              )),
        ));
  }
}
