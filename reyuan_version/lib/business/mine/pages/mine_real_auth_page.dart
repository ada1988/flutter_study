import 'package:flutter/material.dart';
import 'package:reyuan_version/business/mine/pages/mine_real_auth_phone_page.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/my_button.dart';
import 'package:reyuan_version/common/util/app_navigator.dart';
class MineRealAuthPage extends StatefulWidget {
  @override
  _MineRealAuthPageState createState() => _MineRealAuthPageState();
}

class _MineRealAuthPageState extends State<MineRealAuthPage> {

void _login() {
  AppNavigator.pushResult(
                              context,
                              MineRealAuthPhonePage(), (result) {
                            setState(() {
                              //_mineIntroduction = result.toString();
                            });
                          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(centerTitle: "实名认证",backImg:"assets/images/mine/back_black.png"),
        body: MyScrollView(
            key: const Key('mine_real_auth_page'),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            children: [
              Padding(padding:EdgeInsets.only(left: 12),child: Text( "上传身份证照片",style: TextStyle(color: Color(0xff181818),fontSize: 18,fontWeight: FontWeight.bold)),),
              Padding(padding:EdgeInsets.only(left: 12,top: 8),child: Text( "仅供审核使用且他人无法查看，不会对信息做任何采集与保留，请放心使用",style: TextStyle(color: Color(0xff999999),fontSize: 13,fontWeight: FontWeight.bold)),),
              SizedBox(height: 40,),
              Center(child: Stack(children: <Widget>[
                const LoadAssetImage('mine/bg_a',
                      height: 181.0, width: 285.0),
                     Positioned(left:97,bottom: 15,child: Text("上传身份证正面",style: TextStyle(fontSize: 13,color: Color(0xff666666)),),) 
              ],),),
              SizedBox(height: 20,),
              Center(child: Stack(children: <Widget>[
                const LoadAssetImage('mine/card_b',
                      height: 181.0, width: 285.0),
                     Positioned(left:97,bottom: 15,child: Text("上传身份证反面",style: TextStyle(fontSize: 13,color: Color(0xff666666)),),) 
              ],),),
              Center(child: Container(
                padding: EdgeInsets.only(bottom: 15,top: 103),
                child: Text("拍摄时请确保身份证边角完整，自己清晰，亮度均匀",style: TextStyle(fontSize: 12,color: Color(0xff999999)),),
              )),
              MyButton(
                onPressed: _login,
                text: '确认无误，下一步',
              ),
            ]));
  }
}