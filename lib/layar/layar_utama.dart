import 'package:aplikasi_ta/layar/layar_masuk.dart';
import 'package:aplikasi_ta/layar/layar_pesan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyBar extends StatelessWidget {
  const MyBar({ Key? key }) : super(key: key);

  @override
  Widget build (BuildContext context) {
    return const MaterialApp(
       home: UtamaLayar(),
    );
  }
}

class UtamaLayar extends StatefulWidget {
  const UtamaLayar({ Key? key }) : super(key: key);

  @override
  State<UtamaLayar> createState() => _UtamaLayarState();
}


class _UtamaLayarState extends State<UtamaLayar> {

  List<String> items = [
    "Pesawat",
    "Kereta",
    "Taxi",
    "Kapal",
    "Hotel",
  ];

  List<IconData> icons =[
    Icons.airplane_ticket,
    Icons.train,
    Icons.taxi_alert,
    Icons.sailing,
    Icons.hotel
  ];

  int current =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TICKET.GO"),
        backgroundColor: Color.fromARGB(255, 12, 0, 32), 
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Colors.white,
       body: Container(
        child: Column(
          children: [
            /// CUSTOM TABBAR
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            margin: const EdgeInsets.all(5),
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.grey
                                  : null,
                              borderRadius: current == index
                                  ? BorderRadius.circular(10) : null,
                              border: current == index
                                  ? Border.all(
                                      color: Color.fromARGB(255, 12, 0, 32), width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w600,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }
                ),
            ),

            /// MAIN BODY
            Container(
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icons[current],
                    size: 200,
                    color: Color.fromARGB(255, 12, 0, 32),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    items[current],
                    style: GoogleFonts.laila(
                        fontWeight: FontWeight.w500,
                        fontSize: 30,
                        color: Color.fromARGB(255, 12, 0, 32)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                   child: Container(
                    child: MaterialButton(onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: ((context) => (PesanLayar())),));
                    },
                    height: 20,
                    padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 50
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                      color: Color.fromARGB(255, 12, 0, 32),
                    child: Text(
                      'Lanjut pemesanan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    ),
                   ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                Container(
                  child: IconButton(icon: const Icon(Icons.arrow_back, color: Color.fromARGB(255, 12, 0, 32), size: 15,),
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) =>(MasukLayar())),);
              },),
            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}