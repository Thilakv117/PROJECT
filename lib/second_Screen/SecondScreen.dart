import 'package:flutter/material.dart';
import 'package:sample_work/login_Page/LoginPage.dart';
import 'package:sample_work/third_screen/ThirdScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _SelectedIndex = 0;

  String selectedItemColor = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Row(
          children: [
            SizedBox(width: 250),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
          ],
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
            Row(
              children: const [
                SizedBox(width: 80),
                Text(
                  'Balance : ',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  '\$567,57',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
              const  SizedBox(width: 100),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              const  SizedBox(width: 20),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              const  SizedBox(width: 20),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()),
                    );
                  },
                  icon: Icon(Icons.balance),
                ),
              ],
            ),
           const SizedBox(height: 20),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 200,
                  width: double.infinity,
                  color: Colors.lightGreen,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          SizedBox(
                            width: 230,
                          ),
                          Text(
                            'CARDS',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    const  SizedBox(height: 20),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            '3567 55437 9080 5600',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                        ],
                      ),
                    const  SizedBox(height: 5),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'CARD NUMBER',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    const  SizedBox(height: 40),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'TOMMY BERN',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 120),
                          Text('05/20'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          SizedBox(width: 20),
                          Text(
                            'XXXXXXXXXXX123',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(width: 85),
                          Text('VALID'),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const ListTile(
                  title: Text('My Cards'),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                const ListTile(
                  title: Text('Transcation'),
                  trailing: Icon(Icons.arrow_forward_ios),
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
            icon: Icon(Icons.change_history_outlined),
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
