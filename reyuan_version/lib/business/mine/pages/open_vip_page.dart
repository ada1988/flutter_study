import "package:flutter/material.dart";
import 'package:flutter_swiper/flutter_swiper.dart';
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
                    child: SizedBox(
                      height: 292,
                      width: MediaQuery.of(context).size.width,
                      child: new Swiper(
                        // 横向
                        scrollDirection: Axis.horizontal,
                        // 布局构建
                        itemBuilder: (BuildContext context, int index) {
                          return new Image.network(
                            "http://hbimg.b0.upaiyun.com/a3e592c653ea46adfe1809e35cd7bc58508a6cb94307-aaO54C_fw658",
                            fit: BoxFit.fill,
                          );
                        },
                        //条目个数
                        itemCount: 6,
                        // 自动翻页
                        autoplay: true,
                        // 分页指示
                        pagination: buildSwiperPagination(),
                        //点击事件
                        onTap: (index) {
                          print(" 点击 " + index.toString());
                        },
                        // 视窗比例
                        viewportFraction: 1,
                        // 布局方式
                        //layout: SwiperLayout.STACK,
                        // 用户进行操作时停止自动翻页
                        autoplayDisableOnInteraction: true,
                        // 无线轮播
                        loop: true,
                        scale: 1,
                      ),
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
            child: Center(
              child: Text(
                "您的会员将于2020-10-07 到期",
                style: TextStyle(fontSize: 13, color: Color(0xff666666)),
              ),
            )),
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

  buildSwiperPagination() {
    return SwiperPagination(
      //指示器显示的位置
      alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
      // 距离调整
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
      // 指示器构建
      builder: DotSwiperPaginationBuilder(
          // 点之间的间隔
          space: 2,
          // 没选中时的大小
          size: 6,
          // 选中时的大小
          activeSize: 12,
          // 没选中时的颜色
          color: Colors.black54,
          //选中时的颜色
          activeColor: Colors.white),
    );
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
