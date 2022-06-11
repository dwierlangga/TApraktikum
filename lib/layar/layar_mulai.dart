import 'package:aplikasi_ta/layar/layar_masuk.dart';
import 'package:flutter/material.dart';

class LayarMulai extends StatefulWidget {
  const LayarMulai({ Key? key }) : super(key: key);

  @override
  State<LayarMulai> createState() => _LayarMulaiState();
}

class _LayarMulaiState extends State<LayarMulai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 12, 0, 82), Colors.black]
          )
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: Text(
                'TICKET.go',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                  fontFamily: "BebasNeue", 
                ),
              ),  
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/1.png'),
                ),
                ),
              ),
              Container(
                child: MaterialButton(
                  onPressed:() {
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=> (MasukLayar())),
                      );
                  },
                  height: 40,
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  color: Colors.white,
                  child: Text(
                    'Ayo Mulai',
                    style: TextStyle(color: Colors.black),
                  ),
                  ),
              )
          ],
        ),
      ),
    );
  }
}