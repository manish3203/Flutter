
import 'package:flutter/material.dart';

class ZealERP extends StatefulWidget {

  const ZealERP({super.key});

  @override
  State<ZealERP> createState() => _ZealERPState();
}

class _ZealERPState extends State<ZealERP> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0), 
          child: Material( 
            elevation: 8, 
            child: Column(
              children: [
                Container(
                  height: 50.0,
                  color: Colors.blueAccent,
                  child: Row(
                    children: [
                      Image.network(
                        "https://vierp-test.s3.ap-south-1.amazonaws.com/logo/ZEAL.png"
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Zeal College Of Enginnering and Research",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.home)
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.dashboard)
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.help)
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: const Icon(Icons.notifications_active)
                      ),
                      const CircleAvatar(
                        backgroundColor:  Color.fromARGB(255, 9, 19, 226),
                        minRadius: 15,
                        child:  Text(
                          "MC",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  ), 
                  
                ),
                Container(
                  height: 50.0,
                  color: Colors.white, 
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Text(
                        "MANISH CHAVAN",
                        style: TextStyle(
                          fontFamily: "Lexical",
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      
                      Text(
                        "Registration No. 120E10554",
                        style: TextStyle(
                          fontFamily: "Lexical",
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      
                      Text(
                        "Information Technology",
                        style: TextStyle(
                          fontFamily: "Lexical",
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.white,
                    elevation: 8,
                    child:Container(
                      height: 200,
                      width: 150,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Academics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          CircleAvatar(
                            child: Image.asset(
                              "assets/academics.png"
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
