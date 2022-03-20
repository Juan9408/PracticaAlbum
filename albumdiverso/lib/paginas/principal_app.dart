import 'package:flutter/material.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'home.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';

class PrincipalApp extends StatefulWidget {
  @override
  State<PrincipalApp> createState() => _PrincipalAppState();
}

class _PrincipalAppState extends State<PrincipalApp> {
  int _paginaActual = 0;
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: botonesFooter(),
      body: getPaginas(),
    );
  }

  Widget getPaginas() {
    return IndexedStack(
      index: activeTab,
      children: [
        PaginaPrincipal(),
        Center(
          child: Text(
            "Buscar",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Favorito",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Perfil",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget botonesFooter() {
    List items = [
      Iconic.home,
      ModernPictograms.search,
      ModernPictograms.heart,
      ModernPictograms.user,
    ];

    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.grey), //cambiar a negro
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: activeTab == index ? Colors.black : Colors.white,
                ));
          }),
        ),
      ),
    );
  }
}
