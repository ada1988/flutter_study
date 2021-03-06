import 'package:flutter/material.dart';
import 'package:reyuan_version/business/mine/pages/edit_ice_breaking_page.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/my_button.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/click_item.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
import 'package:reyuan_version/business/mine/pages/input_text_page.dart';
import 'package:reyuan_version/common/res/resources.dart';

class MineInfoEditPage extends StatefulWidget {
  @override
  _MineInfoEditPageState createState() => _MineInfoEditPageState();
}

class _MineInfoEditPageState extends State<MineInfoEditPage> {
  String _userName = 'Amie仙子';
  String _birthday = '2019-02-25';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF5F6F6),
        appBar: MyAppBar(
            centerTitle: "个人资料", backImg: "assets/images/mine/back_black.png"),
        body: MyScrollView(
            key: const Key('mine_real_auth_page'),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            children: [
              _buildBase(),
              _buildEduIncome(),
              _buildHome(),
              _buildHorse(),
              _buildSelfInfo(),
              _buildIceBreaking(),
              _buildDoForYou(),
              _buildLatelyDoing(),
              _buildFutureDoing(),
              _buildAboutMineThings()
            ]));
  }

  /**
   * 关于我的事
   */
  Widget _buildAboutMineThings() {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 40),
            //设置 child 居中
            alignment: Alignment.center,
            height: 32,
            width: 126,
            //边框设置
            decoration: new BoxDecoration(
              //背景
              //rcolor: Colors.grey,
              //设置四周圆角 角度 这里的角度应该为 父Container height 的一半
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              //设置四周边框
              border: new Border.all(width: 1, color: Color(0xffEAEAEA)),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 25.0, color: Color(0xff999999)),
                  ),
                ),
                Text(
                  ' 关于我的事',
                  style: TextStyle(fontSize: 14.0, color: Color(0xff999999)),
                )
              ],
            ),
          ),
        ]));
  }

  /**
   * 我最近在忙的事儿...
   */
  Widget _buildFutureDoing() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text(
              "如果可以，未来我想…",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("请输入您的心声",
                    style: TextStyle(fontSize: 15, color: Color(0xff999999))),
              ))
        ]));
  }

  /**
   * 我最近在忙的事儿...
   */
  Widget _buildLatelyDoing() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text(
              "我最近在忙的事儿...",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("复工了，准备上班！",
                    style: TextStyle(fontSize: 15, color: Color(0xff999999))),
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
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text(
              "我愿意为你",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("愿我度过半生，仍然宁静无忧～，开朗、阳光...",
                    style: TextStyle(fontSize: 15, color: Color(0xff999999))),
              ))
        ]));
  }

  /**
   * 破冰问题
   */
  Widget _buildIceBreaking() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text(
              "我的破冰问题",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            contentWidget: Text("未设置",
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.subtitle.copyWith(
                    fontSize: Dimens.font_sp15, color: Color(0xffFF6063))),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  EditIceBreakingPage(), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          Container(
              margin: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("请设置您的破冰问题",
                    style: TextStyle(fontSize: 15, color: Color(0xff999999))),
              ))
        ]));
  }

  /**
   * 语音自白
   */
  Widget _buildSelfInfo() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          ClickItem(
            decoration: BoxDecoration(),
            titleWidget: Text(
              "语音自白",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            contentWidget: Text("未设置",
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.subtitle.copyWith(
                    fontSize: Dimens.font_sp15, color: Color(0xffFF6063))),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: FlatButton(
              onPressed: () => {},
              textColor: Colors.black87,
              disabledTextColor: Colours.dark_text_disabled,
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                    color: Color(0xffFFCC02),
                    borderRadius: BorderRadius.circular(10)),
                width: 100,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[Text("录制")],
                ),
              ),
            ),
          )
        ]));
  }

  /**
   * 房产
   */
  Widget _buildHorse() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            height: 48,
            child: Text(
              "  房产",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            title: '是否有房',
            contentWidget: Text(_userName,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '房产认证',
            contentWidget: Container(
                //设置 child 居中
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 150),
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
                child: Text(
                  "*已认证",
                  style: TextStyle(fontSize: 11, color: Color(0xffFF8C00)),
                )),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
        ]));
  }

  /**
   * 居住地/家乡
   */
  Widget _buildHome() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            height: 48,
            child: Text(
              "  居住地/家乡",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            title: '工作居住地',
            contentWidget: Text(_userName,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '家乡',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
        ]));
  }

  /**
   * 学历收入
   */
  Widget _buildEduIncome() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            height: 48,
            child: Text(
              "  学历收入",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            title: '最高学历',
            contentWidget: Text(_userName,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '学历认证',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '行业',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '职业',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '年收入',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
        ]));
  }

  /**
   * 基本资料
   */
  Widget _buildBase() {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(top: 12),
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(children: <Widget>[
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.centerLeft,
            height: 48,
            child: Text(
              "  基本资料",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          //Gaps.vGap16,
          ClickItem(
            decoration: BoxDecoration(),
            title: '昵称',
            contentWidget: Text(_userName,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '昵称',
                    hintText: '请录入您的昵称',
                    content: _userName,
                  ), (result) {
                setState(() {
                  _userName = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '生日',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '性别',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '身高',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '体重',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
          ClickItem(
            decoration: BoxDecoration(),
            title: '婚姻状况',
            contentWidget: Text(_birthday,
                textAlign: TextAlign.right,
                style: Theme.of(context)
                    .textTheme
                    .subtitle
                    .copyWith(fontSize: Dimens.font_sp15)),
            onTap: () {
              AppNavigator.pushResult(
                  context,
                  InputTextPage(
                    title: '生日',
                    hintText: '请选择生日',
                    content: _birthday,
                  ), (result) {
                setState(() {
                  _birthday = result.toString();
                });
              });
            },
          ),
        ]));
  }
}
