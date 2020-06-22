import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0; // Todo: khởi tạo giá trị ban đầu tất cả = 0
  final TextEditingController t1 = new TextEditingController(text: "0");
  //! muốn sử dụng TextFiled thì phải gọi TextEdittingController để đặt Id cho TextField
  //? text: "0" : là hiện thị ra bên ngoài  TextField giá trị ban đầu = 0
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  //! tạo các hàm Add,Sub,Mul,Div dùng để bắt sự kiện cho các nút Button
  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void reset() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
    //! hàm này dùng để thay đổi trạng thái TextField 1 và TextField 2 về trạng thái ban đầu = 0
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculator App"),
          // đây là tiêu đề của App
        ),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "OutPut: $sum", //! kết quả in ra màn hình khi nhập vào TextField và nhấn nút button.
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                //Todo: TextInputType.number cho phép người dùng chỉ nhập được các số, không thể nhập các ký tự đặc biệt và chữ
                decoration: new InputDecoration(hintText: "Enter Number 1"),
                controller: t1, //Todo: id dùng để bắt sự kiện cho TextField
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 2"),
                controller: t2, //Todo: id dùng để bắt sự kiện cho TextField
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      child: Text(" + "),
                      color: Colors.green,
                      onPressed: doAdd),
                  new MaterialButton(
                      child: Text(" - "), color: Colors.red, onPressed: doSub),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      child: Text(" * "),
                      color: Colors.yellow,
                      onPressed: doMul),
                  new MaterialButton(
                      child: Text(" / "),
                      color: Colors.orange,
                      onPressed: doDiv),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 10.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                      child: Text("Reset"),
                      color: Colors.purple,
                      onPressed: reset),
                ],
              )
            ],
          ),
        ));
  }
}
