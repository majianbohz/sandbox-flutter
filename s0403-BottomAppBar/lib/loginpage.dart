import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:j0329/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LoginPage> {
  var controller_username;
  var controller_passwd;

  @override
  void initState() {
    super.initState();
    controller_username = TextEditingController();
    controller_passwd = TextEditingController();
    controller_username.addListener(() {});
    controller_passwd.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
            padding: const EdgeInsets.all(70.0),
            children: [
              Image(image: AssetImage("assets/images/login.jpg")),

              Container(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  controller: controller_username,
                  textAlign: TextAlign.center,
                  textInputAction: TextInputAction.send,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: '请输入账号',
                    //icon: Icon(Icons.person),
                    //prefixIcon: Icon(Icons.wc),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        controller_username.clear();
                      },
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30),
                child: TextField(
                  controller: controller_passwd,
                  textAlign: TextAlign.center,
                  textInputAction: TextInputAction.send,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    labelText: '请输入密码',
                    //icon: Icon(Icons.person),
                    //prefixIcon: Icon(Icons.wc),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        controller_passwd.clear();
                      },
                    ),
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                    ),
                    onPressed: () { onlogin(); },
                    child: Text("登录"),
                  ),
                  TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          overlayColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                      ),
                      onPressed: () { onregister(); },
                      child: Text("注册"),
                  ),
                ],
              ),
            ]
        )
    );
  }

  void onlogin() {
    AlertDialog( content: Text("login"),);
    print("login");
    _resetAndOpenPage();
  }

  void onregister() {
    AlertDialog( content: Text("register"),);
    print("register");
  }

  void _resetAndOpenPage() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (BuildContext context) => MyHomePage()),
      (route) => route == null,
    );
  }

}


