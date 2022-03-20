import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:albumdiverso/constantes/conts.dart';
import 'package:albumdiverso/paginas/detalleCanciones.dart';

class PaginaPrincipal extends StatefulWidget {
  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1 = 0;
  int activoMenu2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: mostrarAppBar(),
      ),
      body: bodyAppSpf(),
    );
  }

  Widget mostrarAppBar() {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: .5, right: .5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explorar",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Icon(FontAwesome5.circle),
          ],
        ),
      ),
    );
  }

  Widget bodyAppSpf() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children:
                          List.generate(categorias_type_1.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activoMenu1 = index;
                          });
                        },
                        child:
                            //PRIMER BLOQUE
                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              categorias_type_1[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: activoMenu1 == index
                                      ? Colors.green
                                      : Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(imag.length - 0, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CancionesDetalle(
                                title: imag[index]['title'],
                                description: imag[index]['description'],
                                imag: imag[index]['img'],
                              ),
                              type: PageTransitionType.scale,
                              alignment: Alignment.center));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imag[index + 0]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          imag[index + 0]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 180,
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          //fin del bloque
          SizedBox(
            height: 10,
          ),
          //SEGUNDO BLOQUE
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(categorias_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activoMenu2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categorias_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: activoMenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activoMenu2 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(imag.length - 0, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CancionesDetalle(
                                title: imag[index]['title'],
                                description: imag[index]['description'],
                                imag: imag[index]['img'],
                              ),
                              type: PageTransitionType.scale,
                              alignment: Alignment.center));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imag[index + 0]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          imag[index + 0]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          //fin del segundo bloque
          SizedBox(
            height: 5,
          ),
          //inicio del bloque3
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(categorias_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activoMenu2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categorias_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: activoMenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activoMenu2 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(imag.length - 0, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CancionesDetalle(
                                title: imag[index]['title'],
                                description: imag[index]['description'],
                                imag: imag[index]['img'],
                              ),
                              type: PageTransitionType.scale,
                              alignment: Alignment.center));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imag[index + 0]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          imag[index + 0]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          //fin tercer bloque3
          SizedBox(
            height: 5,
          ),
          //inicio del bloque4
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(categorias_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activoMenu2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categorias_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: activoMenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activoMenu2 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(imag.length - 0, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CancionesDetalle(
                                title: imag[index]['title'],
                                description: imag[index]['description'],
                                imag: imag[index]['img'],
                              ),
                              type: PageTransitionType.scale,
                              alignment: Alignment.center));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imag[index + 0]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          imag[index + 0]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          //fin tercer bloque4
          SizedBox(
            height: 5,
          ),
          //inicio del bloque5
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(categorias_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activoMenu2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            categorias_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: activoMenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activoMenu2 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(imag.length - 0, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: CancionesDetalle(
                                title: imag[index]['title'],
                                description: imag[index]['description'],
                                imag: imag[index]['img'],
                              ),
                              type: PageTransitionType.scale,
                              alignment: Alignment.center));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imag[index + 0]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          imag[index + 0]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          //fin tercer bloque5
        ],
      ),
    );
  }
}
