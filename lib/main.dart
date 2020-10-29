import 'package:flutter/material.dart';

void main() {
  runApp(MyApp3());
}

class MyApp1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '容器组件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('容器组件示例'),
        ),
        body: Center(
          // 添加容器
          child: Container(
            width: 200.0,
            height: 200.0,
            // 添加边框装饰效果
            decoration: BoxDecoration(
              color: Colors.yellow,
              // 设置上下左右四个边框样式
              border: new Border.all(
                color: Colors.blue, // 边框颜色
                width: 8.0, // 边框粗细
              ),
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
            ),
            child: Text(
              'Flutter',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28.0),
            ),
          ),
        ),
      ),
    );
  }
}

class imageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 居中展示
    return Center(
      child: Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603705844657&di=96f622dc0acfa070fb7e95f1497c7611&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F56%2F12%2F01300000164151121576126282411.jpg',
        // 填充方式
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本组件'),
      ),
      body: Column(
        children: <Widget>[
          // 文本组件
          Text(
            '红色字体+黑色删除线+18号+斜体+粗体',
            style: TextStyle(
              // 字体颜色
              color: const Color(0xffff0000),
              // 文本装饰器(删除线)
              decoration: TextDecoration.lineThrough,
              // 文本装饰器颜色(删除线颜色)
              decorationColor: const Color(0xff000000),
              // 字体大小
              fontSize: 18,
              // 字体样式:是否斜体
              fontStyle: FontStyle.italic,
              // 字体粗细
              fontWeight: FontWeight.bold,
              // 文字间距
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '橙色+下划线+24号',
            style: TextStyle(
              color: const Color(0xffff9900),
              decoration: TextDecoration.underline,
              fontSize: 24,
            ),
          ),
          Text(
            '上划线+虚线+23号',
            style: TextStyle(
              decoration: TextDecoration.overline,
              decorationStyle: TextDecorationStyle.dashed,
              fontSize: 23.0,
              // 字体样式
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            '23号+斜体+粗体+字间距6',
            style: TextStyle(
              fontSize: 23.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 6.0,
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标组件示例'),
      ),
      // 添加图标
      body: Icon(
        // 图标内容
        Icons.phone,
        // 图标颜色
        color: Colors.green[500],
        // 图标大小
        size: 50.0,
      ),
    );
  }
}

class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图标按钮组件示例'),
      ),
      // 添加图标
      body: Center(
        // 添加图标按钮
        child: IconButton(
          // 图标元素
          icon: Icon(Icons.volume_up, size: 48.0),
          tooltip: '按下操作',
          // 按下事件响应
          onPressed: () {
            print("按下操作");
          },
        ),
      ),
    );
  }
}

class ButtonONE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RaiseButton示例',
      home: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton组件示例'),
        ),
        body: Center(
          // RaisedButton具有一种立体感
          child: RaisedButton(
            onPressed: () {
              // 按下事件响应
              print('按下的事件');
            },
            // 添加按钮文本
            child: Text('RaisedButton组件'),
          ),
        ),
      ),
    );
  }
}

class buttonTWO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '基础列表示例';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 添加基础列表
        body: ListView(
          // 添加静态数据
          children: <Widget>[
            // ListTile 是一种样式相对固定的列表项,比如微信的'发现'页面
            ListTile(
              // 添加图标
              leading: Icon(Icons.alarm),
              // 添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.phone),
              // 添加文本
              title: Text('phone'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.airplay),
              // 添加文本
              title: Text('airplay'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.airplay),
              // 添加文本
              title: Text('airplay'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.airplay),
              // 添加文本
              title: Text('airplay'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.alarm),
              // 添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.alarm),
              // 添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.alarm),
              // 添加文本
              title: Text('Alarm'),
            ),
            ListTile(
              // 添加图标
              leading: Icon(Icons.alarm),
              // 添加文本
              title: Text('Alarm'),
            ),
          ],
        ),
      ),
    );
  }
}

class buttonTHREE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '水平列表示例';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),

        // 添加容器
        body: Container(
          // 顶部外边距为20
          margin: EdgeInsets.symmetric(vertical: 50.0),
          // 设定容器宽度
          height: 200.0,
          child: ListView(
            // 设置水平方向排列
            scrollDirection: Axis.horizontal,
            // 添加子元素
            children: <Widget>[
              // 每个Container即为一个列表项
              Container(
                width: 160,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: Colors.amber,
              ),
              Container(
                width: 160,
                color: Colors.green,
                // 垂直布局
                child: Column(
                  children: <Widget>[
                    Text(
                      '水平',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      '列表',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                    ),
                    Icon(Icons.list),
                  ],
                ),
              ),
              Container(
                width: 160.0,
                color: Colors.deepPurpleAccent,
              ),
              Container(
                width: 160.0,
                color: Colors.black,
              ),
              Container(
                width: 160,
                color: Colors.pinkAccent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class button0 extends StatelessWidget {
  // 列
  final List<String> items;

  button0({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final title = '长列表示例';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        // 使用ListView.builder来构建列表项
        body: ListView.builder(
          // 列表长度
          itemCount: items.length,
          // 列表项构造器:context 为上下文,index表示列表项索引
          itemBuilder: (context, index) {
            return ListTile(
              // 左侧图标
              leading: Icon(Icons.phone),
              // 文本内容
              title: Text('${items[index]}'),
            );
          },
        ),
      ),
    );
  }
}

class button1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = '网络列表示例';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title)),
        // 使用GridView.count构建网格
        body: GridView.count(
          primary: false,
          // 四周增加一定的空隙
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 30.0,
          // 一行上放三列数据
          crossAxisCount: 3,
          // 数据项：五行三列
          children: <Widget>[
            const Text('第1行第1列'),
            const Text('第1行第2列'),
            const Text('第1行第3列'),
            const Text('第2行第1列'),
            const Text('第2行第2列'),
            const Text('第2行第3列'),
            const Text('第3行第1列'),
            const Text('第3行第2列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
            const Text('第3行第3列'),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // 全局key用来获取From表单组件
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  // 用户名
  String userName;
  // 密码
  String passWord;
  void login() {
    // 读取当前的Form状态
    var loginForm = loginKey.currentState;
    if (loginForm.validate()) {
      loginForm.save();
      print('userName:' + userName + 'password:' + passWord);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('form表当示例'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              // 添加内边距
              padding: const EdgeInsets.all(16.0),
              // 添加Form表单
              child: Form(
                key: loginKey,
                child: Column(
                  children: <Widget>[
                    // 文本输入框表单组件
                    TextFormField(
                      // 装饰器
                      decoration: InputDecoration(
                        // 提示文本
                        labelText: '请输入用户名',
                      ),
                      // 接收输入值
                      onSaved: (value) {
                        userName = value;
                      },
                      onFieldSubmitted: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: '请输入密码',
                      ),
                      obscureText: true,
                      // 验证表单方法
                      validator: (value) {
                        return value.length < 6 ? "密码长度不够6位" : null;
                      },
                      onSaved: (value) {
                        passWord = value;
                      },
                    ),
                  ],
                ),
              ),
            ),

            // 限定容器大小
            SizedBox(
              width: 340.0,
              height: 42.0,
              // 添加登录按钮
              child: RaisedButton(
                onPressed: login,
                child: Text(
                  '登录',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 容器布局1
class LayoutDemo_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回一个Container对象
    Widget containser = Container(
      // 添加装饰效果
      decoration: BoxDecoration(
        color: Colors.red,
      ),

      child: Column(
        children: <Widget>[
          // 水平布局
          Row(
            children: <Widget>[
              // 使用Expanded防止内容溢出
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  // 添加边框样式
                  decoration: BoxDecoration(
                    // 上下左右边康设置为10.0颜色为灰色
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    // 上下左右边框弧度设置为8.0
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  // 上下左右增加边框
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/1.jpeg'),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/2.jpeg'),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.blueGrey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/3.jpeg'),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 10.0, color: Colors.yellow),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(8.0)),
                  ),
                  margin: const EdgeInsets.all(4.0),
                  child: Image.asset('images/1.jpeg'),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Container容器布局示例'),
      ),
      body: containser,
    );
  }
}

// 剧中布局
class LayoutDemo02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center居中布局示例'),
      ),
      body: Center(
        // 添加文本
        child: Text(
          'Hello Flutter',
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}

class LayoutDemo03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding填充布局示例'),
      ),
      body: Center(
        // 添加容器 外框
        child: Container(
          width: 300.0,
          height: 300.0,
          // 容器内边距上下左右设置为60.0
          padding: EdgeInsets.all(60.0),
          // 添加边框
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 8.0,
            ),
          ),
          // 添加内容器:内框
          child: Container(
            width: 200.0,
            height: 200.0,
            // 添加边框
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 8.0,
              ),
            ),
            // 添加图标
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}

class LayoutDemo04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align对齐布局示例'),
      ),
      body: Stack(
        children: <Widget>[
          // 左上角
          Align(
            // 对齐属性确定位置
            alignment: FractionalOffset(0.0, 0.0),
            // 添加图片
            child: Image.asset(
              'images/1.jpeg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          // 右上角
          Align(
            // 对齐属性确定位置
            alignment: FractionalOffset(1.0, 0.0),
            // 添加图片
            child: Image.asset(
              'images/1.jpeg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          // 左下角
          Align(
            // 对齐属性确定位置
            alignment: FractionalOffset(0.0, 1.0),
            // 添加图片
            child: Image.asset(
              'images/1.jpeg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          // 右下角
          Align(
            // 对齐属性确定位置
            alignment: FractionalOffset(1.0, 1.0),
            // 添加图片
            child: Image.asset(
              'images/1.jpeg',
              width: 128.0,
              height: 128.0,
            ),
          ),
          // 中间
          Align(
            // 对齐属性确定位置
            alignment: FractionalOffset(0.5, 0.5),
            // 添加图片
            child: Image.asset(
              'images/1.jpeg',
              width: 128.0,
              height: 128.0,
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水平布局示例'),
      ),
      // 水平布局
      body: Row(
        children: <Widget>[
          Expanded(
            child: Text('左侧文本', textAlign: TextAlign.center),
          ),
          Expanded(
            child: Text('中间文本', textAlign: TextAlign.center),
          ),
          Expanded(
              child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          )),
        ],
      ),
    );
  }
}

class LayoutDemo06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直布局示例'),
      ),
      // 垂直布局
      body: Column(
        children: <Widget>[
          Text('Flutter'),
          Text('垂直布局'),
          // 添加图标
          Expanded(
              child: FittedBox(
            fit: BoxFit.contain,
            child: const FlutterLogo(),
          )),
        ],
      ),
    );
  }
}

class LayoutDemo07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('垂直布局示例,水平方向向左对齐，主轴方向最小化处理'),
      ),
      // 垂直布局
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Flutter是谷歌的移动UI框架'),
          Text('可以快速在iOS和Android上构建高质量的原生用户界面'),
          Text('Flutter可以与现有的代码一起工作，在全世界'),
          Text('Flutter正在被越来越多的开发者和组织使用'),
          Text('并且Flutter是完全免费、开源的'),
          Text(
            'Flutter！',
            style: TextStyle(fontSize: 36.0),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox缩放布局示例'),
      ),
      // 垂直布局
      body: Container(
        color: Colors.grey,
        width: 250.0,
        height: 250.0,
        // 缩放布局
        child: FittedBox(
          // 宽高等比填充
          fit: BoxFit.contain,
          // 对齐属性:左上角对齐
          alignment: Alignment.topLeft,
          // 内部容器
          child: Container(
            color: Colors.deepOrange,
            child: Text("缩放布局"),
          ),
        ),
      ),
    );
  }
}

class LayoutDemo09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      // 子组件左上角对齐
      alignment: Alignment.topLeft,
      children: <Widget>[
        // 底部添加一个头像
        CircleAvatar(
          backgroundImage: AssetImage('images/1.jpeg'),
          radius: 100.0,
        ),
        // 上面加一个容器,容器里再放一个文本
        Container(
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
          child: Text(
            '我是超级飞侠',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack层叠布局'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}

class LayoutDemo10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠定位布局示例'),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603959321798&di=d0e643531b0dd44875fddeccfa43b9f9&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F56%2F12%2F01300000164151121576126282411.jpg'),
            Positioned(
              bottom: 50.0,
              right: 50.0,
              child: new Text(
                'hi flutter',
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'serif',
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LayoutDemo11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = IndexedStack(
      index: 1, // 设置索引未1就只显示文本内容
      alignment: const FractionalOffset(0.2, 0.2),
      children: <Widget>[
        // 索引未0
        CircleAvatar(
          backgroundImage: new AssetImage('images/2.jpeg'),
          radius: 100.0,
        ),
        //索引为1
        Container(
          decoration: BoxDecoration(
            color: Colors.black38,
          ),
          child: Text(
            '我是超级飞侠',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('indexedstack布局示例'),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}

class LayoutDemo12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('overflowBox溢出父容器显示示例'),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(50.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 400.0,
          maxHeight: 400.0,
          child: Container(
            color: Colors.blueGrey,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

class LayoutDemo13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizeBox设置具体尺寸示例'),
      ),
      body: SizedBox(
        // 固定宽度为200.0 高度为300.0
        width: 200.0,
        height: 300.0,
        child: const Card(
          child: Text(
            'SizedBox',
            style: TextStyle(fontSize: 36),
          ),
        ),
      ),
    );
  }
}

class LayoutDemo14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox限定宽高示例'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
            minWidth: 150.0,
            minHeight: 150.0,
            maxWidth: 200.0,
            maxHeight: 200.0),
        child: Container(
          width: 300.0,
          height: 300.0,
          color: Colors.green,
        ),
      ),
    );
  }
}

class LayoutDemo15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox限定宽高布局示例'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.grey,
            width: 100.0,
          ),
          LimitedBox(
            // 设置最大宽度,限定child 在此范围内
            maxWidth: 150.0,
            child: Container(
              color: Colors.lightGreen,
              width: 250.0,
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo16 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio调整宽高比示例'),
      ),
      body: Container(
        height: 200.0,
        child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class LayoutDemo17 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox百分比布局示例'),
      ),
      body: Container(
        color: Colors.red,
        height: 200.0,
        width: 200.0,
        child: FractionallySizedBox(
          alignment: Alignment.topLeft, // 元素左上角对齐
          widthFactor: 0.5, // 宽度因子
          heightFactor: 1.5, // 高度因子
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}

class LayoutDemo18 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[
      // 列表项
      ListTile(
        // 标题
        title: Text(
          '广州是黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        // 子标题
        subtitle: Text('广州市黄埔大道建中路3号'),
        // 左侧图标
        leading: Icon(
          Icons.fastfood,
          color: Colors.orange,
        ),
      ),
      ListTile(
        // 标题
        title: Text(
          '广州是黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        // 子标题
        subtitle: Text('广州市黄埔大道建中路3号'),
        // 左侧图标
        leading: Icon(
          Icons.local_hospital,
          color: Colors.orange,
        ),
      ),
      ListTile(
        // 标题
        title: Text(
          '广州是黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        // 子标题
        subtitle: Text('广州市黄埔大道建中路3号'),
        // 左侧图标
        leading: Icon(
          Icons.airplay,
          color: Colors.orange,
        ),
      ),
      ListTile(
        // 标题
        title: Text(
          '广州是黄埔大道建中路店',
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0),
        ),
        // 子标题
        subtitle: Text('广州市黄埔大道建中路3号'),
        // 左侧图标
        leading: Icon(
          Icons.computer,
          color: Colors.orange,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView布局示例'),
      ),
      body: Center(
        // 列表视图组件
        child: ListView(
          children: list,
        ),
      ),
    );
  }
}

class LayoutDemo19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('长文本滚动布局示例'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text(
              '\n广州天河区公园',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          Center(
            child: Text(
              '天河公园',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Center(
            // 添加长文本
            child: Text(
              '''天河公园,是区属综合星公元,卫浴广州天河区员村,西靠天府路,南连黄埔大道,北接中山大道,来往交通十分遍历,公园总面积为70.7公顷,木体面积占10公顷.天河公园以自然生态景观为主要特色,公园规划为五个功能区:百花园景区、文本娱乐区、老人活动区、森林休憩区、后勤管理区''',
              style: TextStyle(fontSize: 14.0),
            ),
          ),
        ],
      ),
    );
  }
}

class LayoutDemo20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用generate构造图片列表
    List<Container> _buildGridTitleList(int count) {
      // index 为列表项索引
      return List<Container>.generate(
        count,
        (int index) => Container(
          // 根据索引添加图片路径
          child: Image.asset('images/${1}.jpeg'),
        ),
      );
    }

    // 渲染GridView
    Widget buildGrid() {
      return GridView.extent(
        maxCrossAxisExtent: 150.0, // 次轴的宽度
        padding: const EdgeInsets.all(4.0), // 上下左右内边距
        mainAxisSpacing: 4.0, // 主轴元素间距
        crossAxisSpacing: 4.0, // 次轴元素间距
        children: _buildGridTitleList(9), // 添加9个元素
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('GridView九宫格示例'),
      ),
      body: Center(
        child: buildGrid(),
      ),
    );
  }
}

class LayoutDemo21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tab表格布局示例'),
      ),
      body: Center(
        // 添加表格
        child: Table(
          // 设置表格有多少列,并且指定列宽
          columnWidths: const <int, TableColumnWidth>{
            // 指定索引及固定列宽
            0: FixedColumnWidth(100.0),
            1: FlexColumnWidth(40.0),
            2: FlexColumnWidth(80.0),
            3: FlexColumnWidth(80.0),
          },
          // 设置表格边框样式
          border: TableBorder.all(
              color: Colors.black38, width: 2.0, style: BorderStyle.solid),
          children: const <TableRow>[
            // 添加一行数据
            TableRow(
              children: <Widget>[
                Text('姓名'),
                Text('性别'),
                Text('年龄'),
                Text('身高'),
              ],
            ),
            // 添加第二行数据
            TableRow(children: <Widget>[
              Text('张三'),
              Text('男'),
              Text('26'),
              Text('172'),
            ]),
            // 添加第三行数据
            TableRow(
              children: <Widget>[
                Text('李四'),
                Text('男'),
                Text('28'),
                Text('178'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LayoutDemo22 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform矩阵转换示例'),
      ),
      body: Center(
        // 父容器 作为背景
        child: Container(
          // 背景颜色
          color: Colors.grey,
          // 矩阵转换
          child: Transform(
            // 对齐方式
            alignment: Alignment.topRight,
            // 设置旋转值
            transform: Matrix4.rotationZ(0.3),
            // 被旋转容器
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: const Color(0xFFE8581C),
              child: const Text('Transform矩阵转换'),
            ),
          ),
        ),
      ),
    );
  }
}

class LayoutDemo23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline基准线布局示例'),
      ),
      body: Row(
        // 水平等间距排列子组件间
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // 设置基准线
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'AaBbCc',
              style: TextStyle(
                fontSize: 18.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Container(
              width: 40.0,
              height: 40.0,
              color: Colors.green,
            ),
          ),
          Baseline(
            baseline: 80.0,
            baselineType: TextBaseline.alphabetic,
            child: Text(
              'DdEeEf',
              style: TextStyle(
                fontSize: 26.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LayoutDemo24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Offstage控制是否显示组件示例';

    return MaterialApp(
      title: appTitle,
      home: MyHomePage01(title: appTitle),
    );
  }
}

class MyHomePage01 extends StatefulWidget {
  final String title;
  MyHomePage01({Key key, this.title}) : super(key: key);
  @override
  _MyHomePage01 createState() => _MyHomePage01();
}

class _MyHomePage01 extends State<MyHomePage01> {
  // 状态控制是否显示文本组件
  bool offstage = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Offstage(
          offstage: offstage, // 控制是否显示
          child: Text(
            '我出来啦!',
            style: TextStyle(
              fontSize: 36.0,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 设置是否显示文本组件
          setState(() {
            offstage = !offstage;
          });
        },
        tooltip: "显示隐藏",
        child: Icon(Icons.flip),
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Offstage控制是否显示组件示例',
      home: LayoutDemo24(),
      // title: 'Baseline基准线布局示例',
      // home: LayoutDemo23(),
      // title: 'Transform矩阵转换示例',
      // home: LayoutDemo22(),
      // title: 'Table表格布局示例',
      // home: LayoutDemo21(),
      // title: 'GridView九宫格示例',
      // home: LayoutDemo20(),
      // title: '长文本滚动布局示例',
      // home: LayoutDemo19(),
      // title: 'ListView布局示例',
      // home: LayoutDemo18(),
      // title: 'FractionallSizedBox百分比布局示例',
      // home: LayoutDemo17(),
      // title: 'Aspectratio调整宽高比',
      // home: LayoutDemo16(),
      // title: 'LimitedBox限定宽高布局示例',
      // home: LayoutDemo15(),
      // title: 'ConstrainedBox限定宽高示例',
      // home: LayoutDemo14(),
      // title: 'sizedBox设置具体尺寸示例',
      // home: LayoutDemo13(),
      // title: 'overflowBox溢出父容器显示示例',
      // home: LayoutDemo12(),
      // title: 'indexedstack布局示例',
      // home: LayoutDemo11(),
      // title: '层叠定位布局',
      // home: LayoutDemo10(),
      // title: 'stack布局示例Alignment',
      // home: LayoutDemo09(),
      // title: 'FittedBox缩放布局示例',
      // home: LayoutDemo08(),
      // title: 'text demo',
      // home: ContainerDemo(),

      // title: 'image demo',
      // home: imageDemo(),

      // title: '图标组件示例',
      // home: LayoutDemo(),

      // 图标按钮组件
      // title: '图标按钮组件示例',
      // home: LayoutDemo1(),
      // title: 'RaisedButton示例',
      // home: ButtonONE(),
      // title: '基础列表示例',
      // home: buttonTWO(),

      // title: '水平列表示例',
      // home: buttonTHREE(),

      // title: '长列表示例',
      // home: button0(
      //   // 使用 generate方法产生500条数据
      //   items: new List<String>.generate(500, (i) => "Item $i"),
      // )
      // title: '构建网格',
      // home: button1(),

      // title: "登录表单",
      // home: LoginPage(),

      // title: '容器布局',
      // home: LayoutDemo_2(),
      // title: 'Center剧中布局示例',
      // home: LayoutDemo02(),
      // title: "填充布局",
      // home: LayoutDemo03(),
      // title: '对齐布局',
      // home: LayoutDemo04(),
      // title: "水平布局示例",
      // home: LayoutDemo05(),
      // title: '垂直布局',
      // home: LayoutDemo06(),
      // title: '垂直布局示例,水平方向向左对齐，主轴方向最小化处理',
      // home: LayoutDemo07(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
