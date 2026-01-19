import 'package:flutter/material.dart';
import 'widgets/Experiencia.dart';

void main() {
  runApp(CVApp());
}


class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App CV",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color colorCabecera = Colors.cyanAccent;

  @override
  Widget build(BuildContext context) {
    final tamano = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Manuel Garcia Sanchez"),
        centerTitle: true,
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: colorCabecera,
                borderRadius: BorderRadius.circular(10),
              ),
              child: tamano
              ? cabeceraRow()
              : cabeceraColumn()
            ),

              const SizedBox(height: 20),

              const Text("Estudios",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.purple), 
              textAlign: TextAlign.center
              ),

              const SizedBox(height: 10),

              const Text("Técnico superior de desarrolo de aplicaciones web - (2020- 2022)",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), 
                textAlign: TextAlign.center
              ),

              const SizedBox(height: 20),

              const Text("Experiencia laboral",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.purple), 
                textAlign: TextAlign.center
              ),

              const SizedBox(height: 10),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Experiencia(
                    empresa: "Algo S.L",
                    fechIni: "01/09/2013",
                    FechFIn: "01/10/2013",
                    labores: "Currar mucho"
                  ),
                  
                  SizedBox(height: 10,),

                  Experiencia(
                    empresa: "Otra S.L",
                    fechIni: "05/11/2013",
                    FechFIn: "01/02/2014",
                    labores: "Currar aun mas"
                  ),
                  
                  SizedBox(height: 10,),

                  Experiencia(
                    empresa: "Locos S.L",
                    fechIni: "12/08/2014",
                    FechFIn: "01/10/2014",
                    labores: "De relax"
                  ),
                  
                  SizedBox(height: 10,),

                  Experiencia(
                    empresa: "Pepito S.L",
                    fechIni: "07/12/2014",
                    FechFIn: "21/04/2015",
                    labores: "Hacer pepitos de ternera"
                  ),
                  
                  SizedBox(height: 10,),

                  Experiencia(
                    empresa: "Ampliaciones S.L",
                    fechIni: "15/06/2015",
                    FechFIn: "19/11/2017",
                    labores: "Ampliacion de calle"
                  ),            
                ],
              ),

              const SizedBox(height: 20),

              const Text("Habilidades",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.purple), 
                textAlign: TextAlign.center
              ),

              const SizedBox(height: 10),

              const Text(
                "Java - Kotlin - Dart - HTML - CSS - Inglés Nativo",
                textAlign: TextAlign.center
              ),

              const SizedBox(height: 20),

              Positioned(
              bottom: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    colorCabecera = (colorCabecera == Colors.cyanAccent)
                      ? Colors.greenAccent
                      : Colors.cyanAccent;
                  });
                },
                child: const Text("Color CAbecera"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  Widget cabeceraRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child:
            Stack(
              children: [
                Image.asset("assets/img/foto.png",height: 100),
                Positioned(
                  bottom: 35,
                  left: 10,
                  child: Text(
                    "Not File",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromARGB(255, 216, 7, 70)
                    ),
                  ),
                ),
              ],
            )
        ),

        const SizedBox(width: 16),

        Expanded(
          flex: 2,
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "FecNac: 01/01/2001",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                Text(
                  "Direccion: C/ Armando, 69",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ],
            )
        ),

        Expanded(
          flex: 2,
          child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Correo: manu@gmail.com",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                Text(
                  "Tlfn: 666-555-444",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ],
            )
        ),
      ],
    );
  }




  Widget cabeceraColumn () {
    return Column(
      children: [
        Stack(
              children: [
                Image.asset("assets/img/foto.png",height: 100),
                Positioned(
                  bottom: 35,
                  left: 10,
                  child: Text(
                    "Not File",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromARGB(255, 216, 7, 70)
                    ),
                  ),
                ),
              ],
        ),

        const SizedBox(height: 10),

        Text(
          "FecNac: 01/01/2001",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
        Text(
          "Direccion: C/ Armando, 69",
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        const SizedBox(height: 10),

        Text(
          "Correo: manu@gmail.com",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
          Text(
          "Tlfn: 666-555-444",
            style: TextStyle(fontSize: 22, color: Colors.black),
          ),
      ],
    );
  }


}

