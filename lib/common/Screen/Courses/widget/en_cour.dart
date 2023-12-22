import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Encour extends StatelessWidget {
  const Encour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Stack(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 0.4,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            // Première moitié noire
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            // Deuxième moitié rouge
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                  top: MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Perlage",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 107, 0, 1)),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width *
                                            0.04,
                                      ),
                                      child: Text("Lesson 1"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: MediaQuery.of(context).size.width *
                                            0.04,
                                      ),
                                      child: const Row(
                                        children: <Widget>[
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          Text('4.4  |  3 Hrs 06 Mins'),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10,),

                                     ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Container(
                                        
                                        child: LinearPercentIndicator(
                                          width: MediaQuery.of(context).size .width*0.3,
                                          animation: true,
                                          lineHeight: 14.0,
                                          animationDuration: 2500,
                                          percent: 0.8,
                                          //center: Text("80.0%"),
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width * 0.75,
                      top: MediaQuery.of(context).size.width * 0.07,
                      child: Container(
                        width: 40, // Largeur du container vert
                        height: 40, // Hauteur du container vert

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                        child: const Icon(
                          Icons
                              .check, // Icône à afficher dans le conteneur vert
                          color: Colors.white, // Couleur de l'icône
                          size: 30, // Taille de l'icône
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}