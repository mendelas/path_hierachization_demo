import 'export.dart';
import 'text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Page1をラップする。text.dartで作成した値や関数を呼び出せる
      // ChangeNotifierProvider<他のページに書いたモデルのクラス名>と書く
      home: ChangeNotifierProvider<TextProvider>(
          create: (context) => TextProvider(), child: Page1()),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Provider.of<他のページに書いたモデルのクラス名>(context).定義した変数「(例)final String 変数名」
        title: Text(Provider.of<TextProvider>(context).textValue),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This,
      body: Column(
        children: [
          Page2(),
          Page3()
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TextButtonを押した時やTextFieldで値が変わる場合(listen: false)を追記する必要がある
    return TextField(
      onChanged: (newText){
        // textValue = newText
        Provider.of<TextProvider>(context, listen: false).TextChanged(newText);
        print(Provider.of<TextProvider>(context, listen: false).textValue);
      },
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 保存された文字を画面に表示する
    return Text(Provider.of<TextProvider>(context).textValue);
  }
}