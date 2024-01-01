import 'package:flutter/material.dart';

class SearchFlightPage extends StatefulWidget {
  const SearchFlightPage({super.key});

  @override
  State<SearchFlightPage> createState() => _SearchFlightPageState();
}

class _SearchFlightPageState extends State<SearchFlightPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/img2.png',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Hi Tania!',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Where you want to',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'go?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 100),
              ),
              // height: 60,
              child: TextField(
                // focusNode: _searchFocusNode,
                // controller: _searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search a flight',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Upcoming Trips',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromRGBO(28, 94, 133, 100),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10 May, 12:30 pm',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '11 May, 08:15 am',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ABC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('.....'),
                      Icon(Icons.flight),
                      Text('.....'),
                      Text(
                        'XYZ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 20,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(173, 206, 225, 100),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'Abianca, Sodaium',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(63, 126, 164, 100),
                          ),
                        )),
                      ),
                      Container(
                        height: 20,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(173, 206, 225, 100),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: Text(
                          'Xyzaira, Filanto',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(63, 126, 164, 100),
                          ),
                        )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Destinations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                popularDestinations('assets/img3.png', 'Paris', 'France'),
                popularDestinations('assets/img4.png', 'Rome', 'Italy'),
                popularDestinations('assets/img5.png', 'Istanbul', 'Turkey'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 40,
        child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_work,
                    color: Colors.blue,
                  ),
                  label: 'Search',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.blue,
                ),
                label: 'Profile',
                backgroundColor: Colors.white,
              ),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            iconSize: 10,
            onTap: _onItemTapped,
            elevation: 2),
      ),
    );
  }

  Widget popularDestinations(String img, String city, String country) {
    return Container(
      padding: EdgeInsets.fromLTRB(2, 2, 2, 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      height: 152,
      width: 95,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            img,
            height: 114,
            width: 91,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            city,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            country,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(172, 171, 171, 100),
            ),
          ),
        ],
      ),
    );
  }
}
