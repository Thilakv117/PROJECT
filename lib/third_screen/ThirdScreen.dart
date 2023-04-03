import 'package:flutter/material.dart';
import 'package:sample_work/second_Screen/SecondScreen.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 40),
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Image.asset('images/Profile.png'),
                        SizedBox(width: 20),
                        const Text(
                          'Tommy Berns\n Los Angeles,',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                          height: 1,
                          child: Icon(Icons.location_pin),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                const SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    value: .75,
                    strokeWidth: 2,
                  ),
                ),
                const SizedBox(
                  height: 220,
                  width: 220,
                  child: CircularProgressIndicator(
                    value: .62,
                    strokeWidth: 2,
                    color: Colors.green,
                  ),
                ),
                Column(
                  children: const [
                    Text("Balance"),
                    Text("\$567,67"),
                  ],
                ),
                 Positioned(
                  right: 20,
                  top: 30,
                  child: SizedBox(
                    height: 30,
                    child: Image.network('https://icons-for-free.com/iconfiles/png/512/chart+icon-1320167991839136940.png'),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 40),
                SizedBox(
                  height: 20,
                  child: Image.network(
                      'https://www.nicepng.com/png/detail/335-3354103_home-icon-button-png-green-online-icon-png.png'),
                ),
                SizedBox(width: 20),
                Text(
                  'INCOMES',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 45),
                SizedBox(
                  height: 20,
                  child: Image.network(
                      'https://www.nicepng.com/png/detail/335-3354103_home-icon-button-png-green-online-icon-png.png'),
                ),
                SizedBox(width: 20),
                Text(
                  'EXPENSES',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(width: 100),
                Text(
                  '309',
                   style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                SizedBox(width: 120,),
                 Text(
                  '234',
                   style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Bar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_outlined),
            label: 'Money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_history),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.red,
        currentIndex: _SelectedIndex,
        onTap: _onTap,
      ),
    );
  }

  void _onTap(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }
}
