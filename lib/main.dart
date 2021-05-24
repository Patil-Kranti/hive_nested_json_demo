import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_nested_json_demo/hiveModel.dart';

callApi() async {
  var url = "https://bfsi.quicsolv.com/pocdemo/api/cases";
  Response response = await Dio().post(
    url,
    options: Options(
      headers: {
        "authkey": "ddsauudmddisl7d38d37dd4d93d223nd83m",
      },
    ),
  );
  // return response.data;
  // // print(response.data);
  var hive = HiveModel.fromJson(response.data);
  return hive;
  // Hive.box("hivebox").put("hive", hive);

  // print(hive);
}

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(HiveModelAdapter());
  Hive.registerAdapter(DataAdapter());
  Hive.registerAdapter(QuestionsAdapter());
  Hive.registerAdapter(OptionAdapter());
  final hivebox = await Hive.openBox<HiveModel>('hivebox');

  hivebox.put("hive", await callApi());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  late Box<HiveModel> box;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    box = Hive.box("hivebox");
    super.initState();
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
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
        onPressed: hivegetdata,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  hivegetdata() {
    var data = box.values;
    print(data.first.questions.first.option.first.oName);
  }
}
