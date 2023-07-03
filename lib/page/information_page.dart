import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class InformatePage extends StatelessWidget {
  const InformatePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/fondo.png"),
          fit: BoxFit.cover,
        ))),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Informatión',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 10.0),
//********************INFORMATIONS******************************************//
                TextButton(
                  onPressed: () async {
                    final url = Uri(
                      scheme: 'mailto',
                      path: 'service@autoditac.net',
                      query: 'subject=Hello=',
                    );
                    if (await canLaunchUrl(url)) {
                      launchUrl(url);
                    } else {
                      // ignore: avoid_print
                      print("Can't launch $url");
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.mail,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 20.0),
                      Text('service@autoditac.net',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                //****************LINKEDIN**********************
                TextButton(
                  onPressed: () {
                    _launchApp("https://www.linkedin.com/company/autoditac/");
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage("assets/likedin.png"),
                          color: Colors.white),
                      SizedBox(width: 20.0),
                      Text('@Autoditac',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                //*******************PLAYSTORE******************* */
                TextButton(
                  onPressed: () {
                    _launchApp(
                        "https://play.google.com/store/apps/dev?id=7262634525838630808");
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Image(
                          image: AssetImage("assets/playstore.png"),
                          color: Colors.white),
                      SizedBox(width: 20.0),
                      Text('@Autoditac',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                //*****************WEB****************/
                TextButton(
                  onPressed: () async {
                    final url = Uri.parse(
                      "https://autoditac.net/",
                    );
                    if (await canLaunchUrl(url)) {
                      launchUrl(url, mode: LaunchMode.externalApplication);
                    } else {
                      print("Can't launch $url");
                    }
                  },
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.language,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(width: 20.0),
                      Text('Autoditac.net',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
//*********************************InformationFinish********************* */
                ////////////////SELLOIMAGE//////////////////
                Column(
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage(
                          "assets/sello.png",
                        ),
                        color: Colors.white,
                        height: 250,
                        width: 250,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Ajusta el valor según tu preferencia
                            ),
                            primary: Colors.white,
                            minimumSize:
                                Size(100, 40) // Color de fondo del botón
                            ),
                        onPressed: () {
                          Share.share(
                              'Descarga Chat GPT y sumérgete en un mundo de aprendizaje interactivo, donde cada conversación te brinda nuevas perspectivas y conocimientos:https://play.google.com/store/apps/details?id=com.autoditac.lginvestigacionescientificas',
                              subject: "@Autoditac");
                        },
                        child: Text(
                          "SHARE APPLICATION",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

/////FUNCTION LINKEDIN AND PLAYSTORE////
void _launchApp(web) async {
  final url =
      web; // Reemplaza "nombre-de-la-aplicacion" con el esquema o URL de la otra aplicación

  // ignore: deprecated_member_use
  if (await canLaunch(url)) {
    // ignore: deprecated_member_use
    await launch(url);
  } else {
    throw 'No se pudo abrir la aplicación $url';
  }
}
