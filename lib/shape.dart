import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'shape/tabung.dart';
import 'shape/trapesium.dart';

class Shape extends StatefulWidget {
  const Shape({Key? key}) : super(key: key);

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: MediaQuery.of(context).size.height / 3,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Trapesium(
                              title: 'Trapesium',
                            )));
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Trapesium'),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Tabung(
                              title: 'Tabung',
                            )));
              },
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Tabung'),
              )),
        ]),
      ),
    );
  }
}
