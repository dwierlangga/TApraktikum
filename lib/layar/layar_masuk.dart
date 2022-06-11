import 'package:aplikasi_ta/layar/layar_utama.dart';
import 'package:aplikasi_ta/layar/layar_masuk.dart';
import 'package:flutter/material.dart';

class MasukLayar extends StatefulWidget {
  const MasukLayar({ Key? key }) : super(key: key);

  @override
  State<MasukLayar> createState() => _MasukLayarState();
}

class _MasukLayarState extends State<MasukLayar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 0, 32),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                   Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80),
              ),
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset('images/40.png'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30,
                    ),
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Selamat Datang',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0),
                      )
                    ]
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.people,
                      ),
                      hintText: 'E-mail atau Nama Pengguna',
                      border: InputBorder.none
                    ),
                  ),
                ),


                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        offset: Offset(5.0, 5.0), 
                      ),
                    ],
                  ),
                  child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.vpn_key
                      ),
                      hintText: 'Masukan Kata Sandi',
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Text(
                    'Lupa Kata Sandi?',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),

                Container(
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed:(){
                      Navigator.push(context,
                      MaterialPageRoute(
                        builder: ((context) => (UtamaLayar())),));
                    } ,
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      vertical: 10, horizontal: 120),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.grey,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )),
                    
                )
              ]
              ),
          ),
        ],
      ),
    ),
        ],
      ),
    );
  }
}