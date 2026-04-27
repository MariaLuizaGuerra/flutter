import 'package:flutter/material.dart';

class Exercicio6 extends StatelessWidget {
  const Exercicio6({super.key});
  

  Widget inserirCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color.fromARGB(94, 77, 150, 245),
      ),
      child: Image.asset('assets/images/passaro.png', width: 165),
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 101, 245),
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 68, 101, 245),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            height: size * (15 / 100),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Olá, esse é o exercício 6!",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.woman, size: 35, color: Colors.white),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Recomendados", style: TextStyle(fontSize: 20)),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(82, 17, 49, 190),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const TextButton(
                    onPressed: null,
                    child: Text(
                      "Mais",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 2, 3, 8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 10.0),
            child: SizedBox(
              height: size * (40 / 100),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  inserirCard(),
                  const SizedBox(width: 15),

                  inserirCard(),
                  const SizedBox(width: 15),

                  inserirCard(),
                  const SizedBox(width: 15),

                  inserirCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

