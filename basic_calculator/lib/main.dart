import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hesap Makinesi",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basit Hesap Makinesi"),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  State<AnaEkran> createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  //Nesne Oluşturduk. textfieldın içindeki metinleri okuyabilmesi için oluşturduk.
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  int sayi1 = 0;
  int sayi2 = 0;
  int sonuc = 0;

  sayiTopla() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 + sayi2;
      sayi1 = sayi2 = 0;
      t1.text = t2.text = "0";
    });
  }

  sayiCikar() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 - sayi2;
      sayi1 = sayi2 = 0;
      t1.text = t2.text = "0";
    });
  }

  sayiCarp() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = sayi1 * sayi2;
      sayi1 = sayi2 = 0;
      t1.text = t2.text = "0";
    });
  }

  sayiBol() {
    setState(() {
      sayi1 = int.parse(t1.text);
      sayi2 = int.parse(t2.text);
      sonuc = (sayi1 ~/ sayi2);
      sayi1 = sayi2 = 0;
      t1.text = t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("$sonuc"),
            TextField(
              controller: t1,
            ),
            TextField(
              controller: t2,
            ),
            ElevatedButton(
              onPressed: sayiTopla,
              child: Text("Topla"),
            ),
            ElevatedButton(
              onPressed: sayiCikar,
              child: Text("Çikar"),
            ),
            ElevatedButton(
              onPressed: sayiCarp,
              child: Text("Çarp"),
            ),
            ElevatedButton(
              onPressed: sayiBol,
              child: Text("Böl"),
            ),
          ],
        ),
      ),
    );
  }
}
