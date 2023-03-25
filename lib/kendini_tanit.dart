import 'package:flutter/material.dart';
import 'package:gorev/color_constant.dart';
import 'package:gorev/hermione_tanit.dart';

class KendiniTanit extends StatefulWidget {
  const KendiniTanit({super.key});

  @override
  State<KendiniTanit> createState() => _KendiniTanitState();
}

class _KendiniTanitState extends State<KendiniTanit> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        title: const Text("ABDULKERİM ERŞEN")),
        body: Center(
          child: Container(
            width: 400,
            height: 550,
            color: primaryColor,
            child: Column(
              children:  [
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    border: Border.all(width: 4),
                  ),
                  height: 400,
                  width: 300,
                  child: Image.asset("assets/images/fotoo.jpg"),
                ), 
                const Text("Ad: Abdulkerim Erşen\nÜniversite: 19 Mayıs Üniversitesi\nBölüm: Bilgisayar Mühendisliği\nDoğum Tarihi: 18.10.2001",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white60)),
                Container(
                  margin: const EdgeInsets.only(right: 320),
                  child: FloatingActionButton(   
                    child: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HermioneTanit()));
                      },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}