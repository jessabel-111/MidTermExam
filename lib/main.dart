import 'package:flutter/material.dart';
import 'edit_person_page.dart';

void main() {
  runApp(MyApp());
}

class Person {
  final String name;
  final String address;
  final String birthday;
  final String imageUrl;

  Person(this.name, this.address, this.birthday, this.imageUrl);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Person> _people = [
    Person('Jimmilyn Cabigas', 'San Carlos, Pangasinan', 'December 24, 2001',
        'https://scontent.fmnl17-2.fna.fbcdn.net/v/t39.30808-6/324346112_523258189780280_8300871843277694834_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHF2fGxDEvt5j3FKjRZS1raHSrv502-SNMdKu_nTb5I0zzN2B4wfOgnSjPYHM-OxJUDvzbHiXfDBjK02zTmBxR8&_nc_ohc=6PO9SVrGlz8AX-sKv7M&_nc_ht=scontent.fmnl17-2.fna&oh=00_AfCl7wJbUY_BcxYacP-ljihPsnNyDM3oAnllQl2bE2bKmQ&oe=64502E0A'),
    Person('Dennis Trillo', 'Quezon City, Philippine', 'May 12, 1981',
        'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRUdVuad8amyswAMxzuJihu-57dRdA3IUzmjW0Up_-6h3lW2bxzT5l7g3hJVlP6Qm8-Qw_yvfY6ROuQRd0'),
    Person('Jennylyn Mercado', 'Quezon City, Philippine', 'May 12, 1981',
        'data:image/jpeg;base64,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'),
  ];

  void _updatePerson(int index, Person person) {
    setState(() {
      _people[index] = person;
    });
  }

  void _addPerson(Person person) {
    setState(() {
      _people.add(person);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'MIDTERM EXAM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('USER PROFILE'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/J.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.separated(
            padding: EdgeInsets.all(16.0),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 16.0),
            itemCount: _people.length,
            itemBuilder: (BuildContext context, int index) {
              Person person = _people[index];

              return Card(
                color: Colors.transparent,
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(person.imageUrl),
                  ),
                  title: Text(
                    person.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8.0),
                      Text(
                        'Address:',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        person.address,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        'Birthday:',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        person.birthday,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.white,
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => EditPersonPage(
                            person: person,
                            index: index,
                          ),
                        ),
                      );
                      if (result != null) {
                        if (result['isNew'] == true) {
                          _addPerson(result['person']);
                        } else {
                          _updatePerson(result['index'], result['person']);
                        }
                      }
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
