import 'package:flutter/material.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/my_card.dart';
import 'package:reyuan_version/widgets/click_item.dart';

import 'package:reyuan_version/common/res/resources.dart';

/**
 * 我的详情
 */
class MineInfoPage extends StatefulWidget {
  @override
  _MineInfoPageState createState() => _MineInfoPageState();
}

class _MineInfoPageState extends State<MineInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyScrollView(
      key: const Key('mine_info_page'),
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      children: <Widget>[
        _buildHeaderImage(),
        Container(
          color: Color(0xffF5F6F6),
          child: Column(
            children: <Widget>[
              _buildHeadInfo(),
              SizedBox(
                height: 10,
              ),
              _buildBaseInfo(),
              SizedBox(
                height: 10,
              ),
              _buildDoForYou(),
              Gaps.line,
              _buildLatelyDoing(),
              Gaps.line,
              _buildFutureDoing(),
              Gaps.line,
              _builDynamic()
            ],
          ),
        )
      ],
    ));
  }
  /**
   * 动态
   */
  Widget _builDynamic() {
    return Container(
        alignment: Alignment.bottomLeft,
        //margin: EdgeInsets.only(top: 12,left: 16),
        padding: EdgeInsets.only(top: 12,left: 16),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Align(alignment: Alignment.centerLeft,child: Text("我的动态",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold)),),
                        Container(
       // alignment: Alignment.bottomLeft,
        width: MediaQuery.of(context).size.width,height: 300,)
        ],));
  }
 /**
   * 如果可以未来。。。
   */
  Widget _buildFutureDoing() {
    return Container(
        alignment: Alignment.bottomLeft,
       // margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.only(bottom: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
            constraints:
                BoxConstraints(maxHeight: double.infinity, minHeight: 48.0),
            width: double.infinity,
            child: Row(
              //为了数字类文字居中
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("如果可以，未来我想…",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold)),
                
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("愿我度过半生，仍然宁静无忧～，开朗、阳光…",
                    style: TextStyle(fontSize: 15, color: Color(0xff181818))),
              ))
        ]));
  }
/**
   * 我最近在忙的事儿...
   */
  Widget _buildLatelyDoing() {
    return Container(
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(bottom: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
            constraints:
                BoxConstraints(maxHeight: double.infinity, minHeight: 48.0),
            width: double.infinity,
            child: Row(
              //为了数字类文字居中
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("我最近在忙的事儿…",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold)),
                const Spacer(),
                Gaps.hGap16,
                Expanded(
                  flex: 4,
                  child: Text("123",
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(fontSize: Dimens.font_sp12)),
                ),
                Gaps.hGap8,
                Opacity(
                  // 无点击事件时，隐藏箭头图标
                  opacity: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: const LoadAssetImage('mine/discover_like_sele',
                        height: 16.0, width: 16.0),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("愿我度过半生，仍然宁静无忧～，开朗、阳光…",
                    style: TextStyle(fontSize: 15, color: Color(0xff181818))),
              ))
        ]));
  }

  /**
   * 我愿意为你
   */
  Widget _buildDoForYou() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        padding: EdgeInsets.only(bottom: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 15.0),
            padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
            constraints:
                BoxConstraints(maxHeight: double.infinity, minHeight: 48.0),
            width: double.infinity,
            child: Row(
              //为了数字类文字居中
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("我愿意为你",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold)),
                const Spacer(),
                Gaps.hGap16,
                Expanded(
                  flex: 4,
                  child: Text("123",
                      textAlign: TextAlign.right,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(fontSize: Dimens.font_sp12)),
                ),
                Gaps.hGap8,
                Opacity(
                  // 无点击事件时，隐藏箭头图标
                  opacity: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: const LoadAssetImage('mine/discover_like_sele',
                        height: 16.0, width: 16.0),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("愿我度过半生，仍然宁静无忧～，开朗、阳光…",
                    style: TextStyle(fontSize: 15, color: Color(0xff181818))),
              ))
        ]));
  }

/**
 * 顶部图片
 */
  Widget _buildHeaderImage() {
    return Container(
      height: 375,
      child: Stack(children: <Widget>[
        Positioned.fill(
            top: 0,
            child: Container(
                color: Color(0xffF5F6F6),
                child: Column(children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/mine/pic.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: SizedBox(
                        height: 375, width: MediaQuery.of(context).size.width),
                  ),
                ]))),
        Positioned(
          top: 54,
          left: 14,
          child: Container(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                      width: 30,
                      height: 30,
                      decoration: new BoxDecoration(
                        //背景
                        color: Colors.black87,
                        //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        //设置四周边框
                        //border: new Border.all(width: 1, color: Color(0xffEAEAEA)),
                      ),
                      padding: EdgeInsets.only(left: 10, top: 5),
                      child: Text(
                        "<",
                        style: TextStyle(color: Colors.white),
                      )
                      //const LoadAssetImage('ic_arrow_right',height: 24.0, width: 24.0),
                      ),
                  onTap: () => {AppNavigator.goBack(context)},
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 60),
                  child: const LoadAssetImage('mine/share_w',
                      height: 30.0, width: 30.0),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 54,
          child: Container(
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Container(
                      margin: EdgeInsets.only(top: 285, left: 12),
                      //设置 child 居中
                      alignment: Alignment.center,
                      height: 24,
                      width: 48,
                      //边框设置
                      decoration: new BoxDecoration(
                        //背景
                        color: Colors.black38,
                        //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        //设置四周边框
                        //border: new Border.all(width: 1, color: Color(0xffEAEAEA)),
                      ),
                      child: Text(
                        "2/9",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffFFFFFF)),
                      )),
                  onTap: () => {AppNavigator.goBack(context)},
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 70),
                  child: Container(
                      margin: EdgeInsets.only(top: 285, left: 12),
                      //设置 child 居中
                      alignment: Alignment.center,
                      height: 24,
                      width: 58,
                      //边框设置
                      decoration: new BoxDecoration(
                        //背景
                        color: Colors.black54,
                        //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        //设置四周边框
                        //border: new Border.all(width: 1, color: Color(0xffEAEAEA)),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "33 \"",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xffFFFFFF)),
                            ),
                          ),
                          const LoadAssetImage('mine/play_small_btn',
                              height: 12.0, width: 12.0)
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  /**
   * 头部信息
   */
  Widget _buildHeadInfo() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 194,
        color: Colors.white,
        child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 12, top: 20),
                  child: Text(
                    "花花仙子,",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 24),
                  child: Text(
                    "25岁",
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  //设置 child 居中
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(left: 190, top: 24),
                  padding: EdgeInsets.only(left: 5),
                  height: 18,
                  //color: Color(0xffFFCC02),
                  width: 60,
                  //边框设置
                  decoration: new BoxDecoration(
                    //背景
                    color: Color(0xffFFCC02),
                    //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    //设置四周边框
                    border: new Border.all(width: 1, color: Color(0xffEAEAEA)),
                  ),
                  child: Row(
                    children: <Widget>[
                      const LoadAssetImage('mine/attestation_icon',
                          height: 14.0, width: 14.0),
                      Text(
                        "已认证",
                        style:
                            TextStyle(fontSize: 11, color: Color(0xffFF8C00)),
                      )
                    ],
                  ))
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 12, top: 4),
                  child: const LoadAssetImage('mine/attestation_icon',
                      height: 10.0, width: 10.0)),
              Container(
                  margin: EdgeInsets.only(left: 6, top: 4),
                  child: Text(
                    "浙江, 杭州",
                    style: TextStyle(fontSize: 14, color: Color(0xff999999)),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    "150km以外",
                    style: TextStyle(fontSize: 14, color: Color(0xff999999)),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MyCard(
              color: Color(0xffF7F7F7),
              child: Container(
                  height: 88.0,
                  width: 351,
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        "“",
                        style:
                            TextStyle(color: Color(0xffD8D8D8), fontSize: 20),
                      ),
                      Wrap(
                        children: <Widget>[
                          Text(
                            "愿我度过半生，仍然宁静无忧～，开朗、阳光、向上， 喜欢读书 看电影 听音乐出门旅行。",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff666666)),
                          )
                        ],
                      )
                    ],
                  )))
        ]));
  }

  /**
   * 我的资料
   */
  Widget _buildBaseInfo() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 462,
        color: Colors.white,
        child: Column(children: <Widget>[
          Row(children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 12, top: 20),
                child: Text(
                  "我的资料",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff181818),
                      fontWeight: FontWeight.bold),
                )),
          ]),
          _buildRow("基本信息", "168cm 65kg"),
          _buildRow("职业", "互联网·设计师"),
          _buildRow("收入", "年收入30 - 50万"),
          _buildRow("学历", "未婚"),
          _buildRow("住房情况", "无房产"),
          _buildRow("毕业院校", "浙江省, 杭州市, 西湖区"),
          _buildRow("家乡", "山东省, 济南市, 历下区"),
        ]));
  }

  /**
       * 我的资料：行信息
       */
  Widget _buildRow(title, content) {
    return Container(
      margin: EdgeInsets.only(left: 12, top: 8),
      height: 48,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(fontSize: 15, color: Color(0xff999999)),
              )),
          Expanded(
              flex: 3,
              child: Text(
                content,
                style: TextStyle(fontSize: 15, color: Color(0xff181818)),
              )),
        ],
      ),
    );
  }
}
