
import 'package:flutter/material.dart';
import 'package:reyuan_version/common/res/resources.dart';

class ClickItem extends StatelessWidget {

  const ClickItem({
    Key key,
    this.onTap,
    this.title,
    this.iconWidget,
    this.titleWidget,
    this.content: '',
    this.textAlign: TextAlign.start,
    this.maxLines: 1,
    this.decoration
  }): super(key: key);

  final GestureTapCallback onTap;
  final String title;
  final Widget iconWidget;
  final Widget titleWidget;
  final String content;
  final TextAlign textAlign;
  final int maxLines;
  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 15.0),
        padding: const EdgeInsets.fromLTRB(0, 15.0, 15.0, 15.0),
        constraints: BoxConstraints(
            maxHeight: double.infinity,
            minHeight: 50.0
        ),
        width: double.infinity,
        decoration: null == decoration?BoxDecoration(
            border: Border(
              bottom: Divider.createBorderSide(context, width: 0.6),
            )
        ):null,
        child: Row(
          //为了数字类文字居中
          crossAxisAlignment: maxLines == 1 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: <Widget>[
            null == iconWidget ? SizedBox():iconWidget,
            null == titleWidget ? Text(title,style: TextStyle(fontSize: Dimens.font_sp15,fontWeight: FontWeight.bold),):titleWidget,
            const Spacer(),
            Gaps.hGap16,
            Expanded(
              flex: 4,
              child: Text(
                content,
                maxLines: maxLines,
                textAlign: maxLines == 1 ? TextAlign.right : textAlign,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: Dimens.font_sp12)
              ),
            ),
            Gaps.hGap8,
            Opacity(
              // 无点击事件时，隐藏箭头图标
              opacity: onTap == null ? 0 : 1,
              child: Padding(
                padding: EdgeInsets.only(top: maxLines == 1 ? 0.0 : 2.0),
                child: Images.arrowRight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
