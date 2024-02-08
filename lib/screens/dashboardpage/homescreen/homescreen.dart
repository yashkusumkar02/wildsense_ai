import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wildsense_ai/widget/curved_edges/curved_edges.dart';
import '../../../widget/curved_edges/curved_edges_widget.dart';
import '../../../widget/custom_container/circular_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 30.0,
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              'assets/images/logo1.png',
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CurvedEdgestWidget(
                  child: Container(
                    color: const Color(0xFF3A174C),
                    padding: const EdgeInsets.only(bottom: 0),
                    child: SizedBox(
                      height: 350,
                      child: Stack(
                        children: [
                          Positioned(
                            top: -150,
                            right: -250,
                            child: CircularContainer(
                              backgroundColor: Colors.white.withOpacity(0.1),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            right: -300,
                            child: CircularContainer(
                              backgroundColor: Colors.white.withOpacity(0.1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 85,
                  right: 20,
                  left: 20,
                  child: Text(
                    'Welcome to Wild-Sense',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                  top: 130,
                  child: SizedBox(
                    width: 400,
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20,
                          top: 0,
                          right: 20,
                          child: Container(
                            width: 400,
                            height: 150,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF635BD3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 20,
                          right: 20,
                          left: 20,
                          child: Center(
                              child: Text(
                            "Detect Species",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'SF Pro',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: 0.50),
                          )),
                        ),
                        const Positioned(
                          top: 50,
                          right: 40,
                          left: 40,
                          child: Center(
                              child: Text(
                                "Scan & identify Animals / Birds Species anywhere, anytime from all over the world.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: 0.50),
                              )),
                        ),
                        Positioned(
                          top: 90,
                          right: 100,
                          left: 110,
                          child: SizedBox(
                            width: 173,
                            height: 29,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 173,
                                    height: 29,
                                    decoration: ShapeDecoration(
                                      gradient: const LinearGradient(
                                        begin: Alignment(1.00, -0.01),
                                        end: Alignment(-1, 0.01),
                                        colors: [Color(0xFF9C3FE4), Color(0xFFC65647)],
                                      ),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  left: 19,
                                  top: 8,
                                  child: Text(
                                    'Scan/Identify a Species',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontFamily: 'SF Pro',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
