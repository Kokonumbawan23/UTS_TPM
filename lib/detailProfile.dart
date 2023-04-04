import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:uts_tpm/login.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/ppbaru.jpeg'),
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 20),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Column(
                        children: const [
                          Text(
                            'Nama :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            ' Muhammad Rizki Firmansyah',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: const [
                          Text(
                            'NIM :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '123200064',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      )),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: const [
                          Text(
                            'Kelas :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Teknologi Pemrograman Mobile IF-E',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: const [
                          Text(
                            'Tempat dan Tanggal Lahir :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Yogyakarta, 26 Juli 2002',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        children: const [
                          Text(
                            'Harapan dan Cita-cita kedepan :',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Dapat lulus tepat waktu, sukses dalam menjalani kehidupan dan membahagiakan orang tua',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
