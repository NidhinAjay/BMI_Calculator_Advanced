import 'package:bmi_calculator_2/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
  home: const bmi(),),
  );
}

class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  @override
  double height = 0;
  int weight=0;
  int age=0;
  num result=0;
  void bmi()
  {
    num r=(weight/(height*height));
    setState(() {
      result=r;
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Scaffold(
            backgroundColor: Colors.black87,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.black87,
              title: Text(
                "BMI CALCULATOR",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: 17,
                ),
                Container(
                  height: 175,
                  width: double.maxFinite,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    children: [
                      Card(
                        color: Colors.blueGrey,
                        elevation: 3.0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(Icons.male, size: 85, color: Colors.white),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey,
                        elevation: 3.0,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(Icons.female, size: 85, color: Colors.white),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: 175,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(7)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$height",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 60,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "m",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Slider(
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                          min: 0,
                          max: 2,
                          divisions: 200,
                          inactiveColor: Colors.grey,
                          activeColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(
                  height: 175,
                  width: double.maxFinite,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    children: [
                      Card(
                        color: Colors.blueGrey,
                        elevation: 3.0,
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Text(
                                "WEIGHT",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "$weight",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   FloatingActionButton.small(onPressed: () {
                                     setState(() {
                                       weight--;
                                     });
                                   },
                                     foregroundColor: Colors.blueGrey,
                                     backgroundColor: Colors.white,
                                     child: Icon(Icons.remove),
                                     heroTag: null,

                                   ),

                                  FloatingActionButton.small(onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                    foregroundColor: Colors.blueGrey,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.add),
                                    heroTag: null,
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blueGrey,
                        elevation: 3.0,
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            children: [
                              Text(
                                "AGE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "$age",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  FloatingActionButton.small(onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                    foregroundColor: Colors.blueGrey,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.remove),
                                    heroTag: null,

                                  ),

                                  FloatingActionButton.small(onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                    foregroundColor: Colors.blueGrey,
                                    backgroundColor: Colors.white,
                                    child: Icon(Icons.add),
                                    heroTag: null,
                                  ),

                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>second(this.height,this.weight,this.age)),);
            },
              child: Card(
                elevation: 4.0,
                color: Colors.brown,
                child: Center(
                    child:
                    Text("CALCULATE", style: TextStyle(fontSize: 30))),
              ),
            ),
              ],
            ),
          ),
    );
  }
}
