import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/demo/01.dart';
import 'package:fun_flutter_demo/pages/demo/02.dart';
import 'package:fun_flutter_demo/pages/demo/03.dart';
import 'package:fun_flutter_demo/pages/demo/04.dart';
import 'package:fun_flutter_demo/pages/demo/06.dart';
import 'package:fun_flutter_demo/pages/demo/07.dart';
import 'package:fun_flutter_demo/pages/demo/08.dart';
import 'package:fun_flutter_demo/pages/demo/09.dart';
import 'package:fun_flutter_demo/pages/demo/10.dart';
import 'package:fun_flutter_demo/pages/demo/11.dart';
import 'package:fun_flutter_demo/pages/demo/12.dart';
import '14.dart';
import 'demo_single_page.dart';

class DemoHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(10), children: <Widget>[
      Wrap(children: <Widget>[
        _addOne(context, test1(), "文字属性1"),
        _addOne(context, test2(), "头像1"),
        _addOne(context, test3(), "头像2"),
        _addOne(context, list1(), "list布局"),
        _addOne(context, ListSyn2(), "横纵混合布局"),
        _addOne(context, State1(), "绝对定位"),
        _addOne(context, AspectDemo(), "固定比例"),
        _addOne(context, CardDemo(), "卡片布局"),
        _addOne(context, WrapDemo(), "流式布局"),
        _addOne(context, SynPageStatePage(), "动态页面"),
        _addOne(context, SynPage2(), "动态页面2"),
        _addOne(context, DiyReturn(), "自定义返回按钮"),
      ])
    ]);
  }

  // 添加画布
  Widget _addOne(BuildContext baseContent, Widget content, String title) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: MaterialButton(
            color: Colors.red[100],
            onPressed: () {
              Navigator.of(baseContent).push(MaterialPageRoute(
                  builder: (baseContent) => DemoSinglePage(content, title)));
            },
            child: Text(title,
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w300))));
  }
}