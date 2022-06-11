import 'package:aplikasi_ta/layar/layar_utama.dart';
import 'package:flutter/material.dart';

class PesanLayar extends StatefulWidget {
  const PesanLayar({ Key? key }) : super(key: key);

  @override
  State<PesanLayar> createState() => _PesanLayarState();
}

class _PesanLayarState extends State<PesanLayar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 0, 32),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'COOMING SOON',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 95,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white, size: 50,),
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) =>(UtamaLayar())),);
              },),
            ),
          ],
        ),
      ),
    );
  }
}