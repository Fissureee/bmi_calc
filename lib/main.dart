import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double bodyHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 21, 58),
        
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.sort),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        centerTitle: true,
        title: const Text("BMI CALCULATOR"),
      ),

      backgroundColor: Color.fromARGB(255, 12, 16, 51),

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(
                          MediaQuery.of(context).size.width * 0.44,
                          MediaQuery.of(context).size.height * 0.17),
                      backgroundColor: Color.fromARGB(255, 39, 42, 78),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.male,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'MALE',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),

                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size(
                          MediaQuery.of(context).size.width * 0.44,
                          MediaQuery.of(context).size.height * 0.17),
                      backgroundColor: Color.fromARGB(255, 39, 42, 78),
                    ),
                    onPressed: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(
                          Icons.female,
                          size: 80,
                          color: Colors.white,
                        ),
                        Text(
                          'FEMALE',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.024,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(255, 20, 26, 60),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'HEIGHT',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${bodyHeight.toInt()}',
                            style: const TextStyle(
                              fontSize: 48,
                              color: Colors.white,
                            ),
                          ),

                          const Text(
                            'cm',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),

                      // SliderTheme(
                      //   data: data,
                      //   child: child
                      // ),

                      Slider(
                        value: bodyHeight,
                        max: 300,
                        divisions: 300,
                        onChanged: (double value) {
                          setState(() {
                            bodyHeight = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.024,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.green,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Colors.green,
                ),
              ],
            ),

            //SizedBox(height: MediaQuery.of(context).size.height * 0.024,),

            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: double.infinity),
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width,
                      MediaQuery.of(context).size.height * 0.133),
                  backgroundColor: Color.fromARGB(255, 246, 7, 101),
                ),
                onPressed: () {},
                child: const Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ), //body
    );
  }
}
