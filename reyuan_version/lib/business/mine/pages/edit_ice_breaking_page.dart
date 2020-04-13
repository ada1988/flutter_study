import 'package:flutter/material.dart';
import 'package:reyuan_version/common/res/gaps.dart';
import 'package:reyuan_version/widgets/app_bar.dart';
import 'package:reyuan_version/widgets/load_image.dart';
import 'package:reyuan_version/widgets/my_scroll_view.dart';
import 'package:reyuan_version/widgets/my_button.dart';
class EditIceBreakingPage extends StatefulWidget {
  @override
  _EditIceBreakingPageState createState() => _EditIceBreakingPageState();
}

class _EditIceBreakingPageState extends State<EditIceBreakingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBar(centerTitle: "破冰问题",backImg:"assets/images/mine/back_black.png"),
        body: MyScrollView(
            key: const Key('edit_ice_breaking_page'),
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            children: [
              Padding(padding:EdgeInsets.only(left: 12),child: Text( "你希望对方先回答什么问题?",style: TextStyle(color: Color(0xff181818),fontSize: 18,fontWeight: FontWeight.bold)),),
              Padding(padding:EdgeInsets.only(left: 12,top: 8),child: Text( "录音，以语音形式发送给对方",style: TextStyle(color: Color(0xff999999),fontSize: 15,fontWeight: FontWeight.bold)),),
              SizedBox(height: 42,),
              Center(child: Text("0s",style: TextStyle(fontSize: 28,color: Color(0xff181818)),)),
              Center(child: const LoadAssetImage('mine/record_a',
                      height: 120.0, width: 120.0)),
              Center(child: Text("点击录制",style: TextStyle(fontSize: 13,color: Color(0xff666666)),),),
              SizedBox(height: 42,),
              Gaps.line,
              SizedBox(height: 28,),
              Container(padding: EdgeInsets.only(left: 16),child:Text( "举个例子",style: TextStyle(color: Color(0xff666666),fontSize: 14,fontWeight: FontWeight.bold)),),
              SizedBox(height: 8,),
              Gaps.line,
              Container(padding: EdgeInsets.only(left: 16,top: 14,bottom: 18),child:Text( "#你最喜欢的土味情话是什么",style: TextStyle(color: Color(0xff999999),fontSize: 14)),),
              Container(padding: EdgeInsets.only(left: 16,top: 14,bottom: 18),child:Text( "#你最喜欢的明星是什么",style: TextStyle(color: Color(0xff999999),fontSize: 14)),),
              Container(padding: EdgeInsets.only(left: 16,top: 14,bottom: 18),child:Text( "#你最喜欢的体育运动是什么",style: TextStyle(color: Color(0xff999999),fontSize: 14)),),
              Container(padding: EdgeInsets.only(left: 16,top: 14,bottom: 18),child:Text( "#你最喜欢的业爱好是什么",style: TextStyle(color: Color(0xff999999),fontSize: 14)),),
              Container(padding: EdgeInsets.only(top: 68),child: MyButton(
                onPressed: ()=>{},
                text: '确认',
              ),),
            ]));
  }
}