import 'package:flutter/material.dart';
import 'package:calculator/constant.dart';
import 'package:calculator/components/mybutton.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: TabBar(
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.blue,
                labelColor: Colors.blue,
                tabs: [
                  Tab(
                    child: Text('Calculator'),
                  ),
                  Tab(
                    child: Text('Exchange Rate'),
                  ),
                  Tab(
                    child: Text('Unit Converter'),
                  ),
                ]),
            actions: [
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(value: 1, child: Text('Setting')),
                      ]),
            ],
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: [
                          Text(
                            userInput.toString(),
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            answer.toString(),
                            style: TextStyle(fontSize: 50, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                MyButton(
                                  title: 'Ac',
                                  onPress: () {
                                    userInput = '';
                                    answer = '';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '+/-',
                                  onPress: () {
                                    userInput += '+/-';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '%',
                                  onPress: () {
                                    userInput += '%';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '/',
                                  onPress: () {
                                    userInput += '/';
                                    setState(() {});
                                  },
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(
                                  title: '7',
                                  onPress: () {
                                    userInput += '7';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '8',
                                  onPress: () {
                                    userInput += '8';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '9',
                                  onPress: () {
                                    userInput += '9';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: 'x',
                                  onPress: () {
                                    userInput += '*';
                                    setState(() {});
                                  },
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(
                                  title: '4',
                                  onPress: () {
                                    userInput += '4';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '5',
                                  onPress: () {
                                    userInput += '5';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '6',
                                  onPress: () {
                                    userInput += '6';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '-',
                                  onPress: () {
                                    userInput += '-';
                                    setState(() {});
                                  },
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(
                                  title: '1',
                                  onPress: () {
                                    userInput += '1';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '2',
                                  onPress: () {
                                    userInput += '2';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '3',
                                  onPress: () {
                                    userInput += '3';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '+',
                                  onPress: () {
                                    userInput += '+';
                                    setState(() {});
                                  },
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(
                                  title: '0',
                                  onPress: () {
                                    userInput += '0';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '.',
                                  onPress: () {
                                    userInput += '.';
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: 'Del',
                                  onPress: () {
                                    userInput = userInput.substring(
                                        0, userInput.length - 1);
                                    setState(() {});
                                  },
                                ),
                                MyButton(
                                  title: '=',
                                  onPress: () {
                                    equalPress();
                                    setState(() {});
                                  },
                                  color: Colors.orange,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text('h'),
                ListView(

                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Icon(

                              Icons.height,
                              color: Colors.blue,
                              size: 80,

                            ),

                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.area_chart_outlined,
                              color: Colors.blue,
                              size: 80,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.blue,
                              size: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.red),
                              height: 40,
                            )

                          ]),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Expanded(
                     flex: 2,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Icon(
                              Icons.speed_outlined,
                              color: Colors.blue,
                              size: 80,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.sunny_snowing,
                              color: Colors.blue,
                              size: 80,
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Icon(
                              Icons.line_weight,
                              color: Colors.blue,
                              size: 80,
                            ),
                            Container(
                              decoration: BoxDecoration(color: Colors.red),
                              height: 40,
                            )

                          ]),
                    ),
                  ],
                )

            ],
          ),
        ));
  }

  void equalPress() {
    Parser p = Parser();
    Expression exp = p.parse(userInput);
    ContextModel contextModel = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
