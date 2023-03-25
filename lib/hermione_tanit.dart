import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gorev/color_constant.dart';
import 'package:gorev/kendini_tanit.dart';
import 'package:gorev/model/harry_model.dart';
import 'package:http/http.dart' as http;

class HermioneTanit extends StatefulWidget {
  const HermioneTanit({super.key});

  @override
  State<HermioneTanit> createState() => _HermioneTanitState();
}

class _HermioneTanitState extends State<HermioneTanit> {
  late final Future<HarryModel> _cek;

  @override
  void initState() {
    super.initState();
    _cek = veriCek();
  }
  var url = Uri.parse('https://hp-api.onrender.com/api/characters');
  Future<HarryModel> veriCek() async {
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonBody = jsonDecode(response.body);
      return HarryModel.fromJson(jsonBody[1]);
    } else {
    throw Exception('Failed to load');
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      appBar: AppBar(
        shadowColor: primaryColor,
        title:  const Text("HERMIONE GRANGER")),
        body:  Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(2.0),      
            child: FutureBuilder<HarryModel>(
              future: _cek,
              builder: (context, snapshot){
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border.all(width: 4),
                        borderRadius: BorderRadius.circular(12)),
                      width: 350,
                      height: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Card(
                          elevation: 20,
                          color: primaryColor,
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 80,
                                backgroundImage: NetworkImage("https://static.wikia.nocookie.net/magicverse/images/3/34/Hermione_Granger.jpg/revision/latest?cb=20221213044249&path-prefix=tr"),
                              ),
                             Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Text(
                                "Name: ${snapshot.data!.name} \n\n" "Gender: ${snapshot.data!.gender} \n\n" "Speices: ${snapshot.data!.species}\n\n" "Year Of Birth: ${snapshot.data!.yearOfBirth} \n\n" 
                                "Actor: ${snapshot.data!.actor!} \n\n" ,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white54),
                              ),
                             ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        margin: const EdgeInsets.only(left: 290, bottom: 1),  
                        child: FloatingActionButton(
                          child: const Icon(Icons.arrow_forward),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const KendiniTanit()));
                          },
                        ),
                      ),
                    )
                  ],
                );
              }
              else if(snapshot.hasError){
                return const Text("Hata");
              }
              else {
                return const Center(child: CircularProgressIndicator());
              }
              },
            )
          ),
        ),
    );
  }
}
  