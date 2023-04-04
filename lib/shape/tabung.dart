import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Tabung extends StatefulWidget {
  const Tabung({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<Tabung> createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  double luas = 0;
  double keliling = 0;

  final jariController = TextEditingController();
  final tinggiController = TextEditingController();

  void hitung() {
    double? jari = double.tryParse(jariController.text);
    double? tinggi = double.tryParse(tinggiController.text);

    jari ??= 0;
    tinggi ??= 0;

    if (jari == 0 || tinggi == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Input yang tidak diisi atau berisi selain angka bernilai 0'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    setState(() {
      luas = 2 * math.pi * jari! * (jari + tinggi!);
      keliling = 2 * math.pi * jari;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12,
            vertical: MediaQuery.of(context).size.height / 6),
        child: Column(
          children: [
            TextFormField(
              controller: jariController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Jari Jari'))
                    ],
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: tinggiController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Tinggi'))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: hitung,
                      child: Text('Hitung Keliling dan Luas')),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Luas : ' + luas.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Text(
                'Keliling : ' + keliling.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
