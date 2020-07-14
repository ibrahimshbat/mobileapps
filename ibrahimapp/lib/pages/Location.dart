import 'package:flutter/material.dart';
import 'package:ibrahimapp/services/WorldTime.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Location"),
      ),
      body: ListView.builder(
          itemCount: locations.length,
      itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 5.0),
              child: Card(
              child: ListTile(
              onTap: (){},
               title: Text(locations[index].location),
                leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),),
              ),
              ),
            );
    }
    ),
    );
  }
}
