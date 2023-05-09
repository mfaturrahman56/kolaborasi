import 'package:coba_coba/page/sholawat_page.dart';
import 'package:coba_coba/page/surat_pendek_page.dart';
import 'package:flutter/material.dart';
import 'package:coba_coba/page/ayat_kursi_page.dart';
import 'package:coba_coba/page/bacaan_sholat_page.dart';
import 'package:coba_coba/page/kata_kata_page.dart';
import 'package:coba_coba/page/niat_sholat_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _showIconName(BuildContext context, String iconName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ikon yang diklik'),
          content: Text('Anda mengklik ikon $iconName'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
          child: AppBar(
           title: Text('ISLAMIC'),
         flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
               image: AssetImage("assets/images/header.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 5, 57, 14),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 244, 242, 238),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/sholatt.png',
                      width: 50,
                      height: 50,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NiatSholat()),
                        );
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Niat Sholat',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(207, 240, 239, 235),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/bacaan.png',
                      width: 40,
                      height: 40,
                      ),
                      onPressed: () {
                      _showIconName(context, 'bacaan');
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Bacaan Sholat',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(237, 251, 251, 249),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/ayatkursi.png',
                      width: 50,
                      height: 50,
                      ),
                      onPressed: () {
                      _showIconName(context, 'ayat kursi');
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Ayat Kursi',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(231, 246, 245, 241),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/allah.png',
                      width: 50,
                      height: 50,
                      ),
                      onPressed: () {
                      _showIconName(context, 'kisah sahabat');
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Pejuang Islam',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 244, 242, 238),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/sholawat3.png',
                      width: 50,
                      height: 50,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => sholawat()),
                        );
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Sholawat',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink(
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 244, 242, 238),
                  shape: CircleBorder(),
                ),
                  child: SizedBox(
                    height: 80,width: 80,
                    child: IconButton(
                      icon: Image.asset(
                      'assets/images/suratpendek.png',
                      width: 50,
                      height: 50,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => suratpendek()),
                        );
                      },
                    ),
                  ),
              ),
              SizedBox(height: 10),
              Text('Surat-Surat Pendek',
              style: TextStyle(color: Color.fromARGB(255, 236, 244, 236),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
