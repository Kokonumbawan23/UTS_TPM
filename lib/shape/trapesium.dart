import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  const Trapesium({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Trapesium> createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double luas = 0;
  double keliling = 0;

  final sisiBawahController = TextEditingController();
  final sisiAtasController = TextEditingController();
  final sisiMiringController = TextEditingController();
  final tinggiController = TextEditingController();

  void hitung() {
    double? sisiAtas = double.tryParse(sisiAtasController.text);
    double? sisiBawah = double.tryParse(sisiBawahController.text);
    double? sisiMiring = double.tryParse(sisiMiringController.text);
    double? tinggi = double.tryParse(tinggiController.text);

    sisiAtas ??= 0;
    sisiBawah ??= 0;
    sisiMiring ??= 0;
    tinggi ??= 0;

    if (sisiAtas == 0 || sisiBawah == 0 || sisiMiring == 0 || tinggi == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
              'Input yang tidak diisi atau berisi selain angka bernilai 0'),
          duration: Duration(seconds: 1),
        ),
      );
    }

    setState(() {
      luas = (sisiAtas! + sisiBawah!) * tinggi! / 2;
      keliling = sisiAtas + sisiBawah + sisiMiring! + tinggi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 12,
            vertical: MediaQuery.of(context).size.height / 6),
        child: Column(
          children: [
            TextFormField(
              controller: sisiBawahController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Sisi Bawah'))
                    ],
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: sisiAtasController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Sisi Atas'))
                    ],
                  ),
                ),
              ),
            ),
            TextFormField(
              controller: sisiMiringController,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: Text('Nilai Sisi Miring'))
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
