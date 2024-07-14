import 'package:flutter/material.dart';
import 'package:food_app_ui/utils/colors.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HomepageState();
}

int indexCategory = 0;

class _HomepageState extends State<HeaderParts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        const SizedBox(
          height: 30,
        ),
        tittle(),
        const SizedBox(
          height: 21,
        ),
        SearchBar(),
        const SizedBox(
          height: 30,
        ),
        categorySelection(),
      ],
    );
  }

  Padding categorySelection() {
    //list of times
    List list = ["All", "FRUTS", "VEGETALES", "PROVICION"];
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
          itemCount: list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () { 
                setState(() {
                  indexCategory = index;
                });
              },
              child: Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    list[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: indexCategory == index
                          ? primaryColors
                          : Colors.black45,
                      fontWeight:
                          indexCategory == index ? FontWeight.bold : null,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Container SearchBar() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green[50], borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          const Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: primaryColors,
                ),
                hintText: "Buscar Comida",
                hintStyle: TextStyle(color: Colors.black26)),
          )),
          Material(
            color: primaryColors,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  //Ordena con una carita feliz
                  Icons.insert_emoticon_sharp, color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding tittle() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hola Oniel",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: primaryColors,
              fontSize: 18,
            ),
          ),
          Text(
            "Está buena la Comida",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          // EL MENU

          Material(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
          //LOCALIZACION
          const Icon(
            Icons.location_on,
            color: primaryColors,
            size: 18,
          ),
          const Text(
            "NICARAGUA",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "asset/perfil.jpeg",
              height: 40,
              width: 40,
            ),
          )
        ],
      ),
    );
  }
}
