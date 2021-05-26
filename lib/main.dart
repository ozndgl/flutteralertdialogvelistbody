import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter alertdialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter alertdialog'),
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
            ElevatedButton(
              child: Text("alertdialog göster"),
              onPressed: () {
                alertDialogGoster(context);
              },
              
            ),
            ElevatedButton(
              child: Text("listbody göster"),
              onPressed: () {
                listbodyGoster(context);
              },
              
            ),
            

          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
void alertDialogGoster(BuildContext ctx){
  showDialog(
      context: ctx,
      barrierDismissible: false, //boşluga tıklandığında kapansınmı
      builder: (ctx){
        return AlertDialog(
          title: Text("alertdialog başlığı"),
          content: Text(
              "alert dialog içeriği \n ikinci satır \n üçüncü satır \n\n\n"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(ctx).pop();//kapatmak için kullanıyoruz
              },
              child: Text("tamam"),
            ),
            ElevatedButton(
              child: Text("kapat"),
              onPressed: () {
                Navigator.of(ctx).pop();//kapatmak için kullanıyoruz
              },
            )
          ],
        );
      });
}

void listbodyGoster(BuildContext ctx){
  showDialog(
      context: ctx,
      barrierDismissible: false, //boşluga tıklandığında kapansınmı
      builder: (ctx){
        return AlertDialog(
          title: Text("alertdialog başlığı"),
          content: SingleChildScrollView(
            child: ListBody(
          children: [
            Text("listbody 1"),
            Text("listbody 1"),
            Text("listbody 2"),
            Text("listbody 3"),
            Text("listbody 4"),
            Text("listbody 5"),
            Text("listbody 6"),
            Text("listbody 7"),
            Text("listbody 8"),
            Text("listbody 9"),
            Text("listbody 10"),
            Text("listbody 11"),
            Text("listbody 12"),
            Text("listbody 13"),
            Text("listbody 14"),
            Text("listbody 15"),
            Text("listbody 16"),
            Text("listbody 17"),
            Text("listbody 18"),
            Text("listbody 19"),
            Text("listbody 20"),
            Text("listbody 21"),
            Text("listbody 22"),
            Text("listbody 23"),
            Text("listbody 1"),
            Text("listbody 1"),
            Text("listbody 2"),
            Text("listbody 3"),
            Text("listbody 4"),
            Text("listbody 5"),
            Text("listbody 6"),
            Text("listbody 7"),
            Text("listbody 8"),
            Text("listbody 9"),
            Text("listbody 10"),
            Text("listbody 11"),
            Text("listbody 12"),
            Text("listbody 13"),
            Text("listbody 14"),
            Text("listbody 15"),
            Text("listbody 16"),
            Text("listbody 17"),
            Text("listbody 18"),
            Text("listbody 19"),
            Text("listbody 20"),
            Text("listbody 21"),
            Text("listbody 22"),
            Text("listbody 23"),
          ],
            )
          ),
         
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(ctx).pop();//kapatmak için kullanıyoruz
              },
              child: Text("tamam"),
            ),
            ElevatedButton(
              child: Text("kapat"),
              onPressed: () {
                Navigator.of(ctx).pop();//kapatmak için kullanıyoruz
              },
            )
          ],
        );
      });
}