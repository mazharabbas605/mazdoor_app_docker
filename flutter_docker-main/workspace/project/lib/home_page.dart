import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Mazdoor App'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Mazdoors'),
              Tab(text: 'Jobs'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Mazdoors Tab
            _buildMazdoorsList(),
            // Jobs Tab
            _buildJobsList(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: _onItemTapped,
        ),
        drawer: _buildDrawer(),
      ),
    );
  }

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.pushNamed(context, '/profile');
    } else if (index == 2) {
      Navigator.pushNamed(context, '/settings');
    }
  }

  Widget _buildMazdoorsList() {
    // Your existing Mazdoor list code
    List<Mazdoor> mazdoors = [
      Mazdoor('khan', 'Plumbing', '123-456-7890', 'City A', true),
      Mazdoor('Junaid', 'Electrician', '987-654-3210', 'City B', false),
      Mazdoor('awais', 'Electrician', '987-654-3210', 'City B', false),
      Mazdoor('javed', 'Electrician', '987-654-3210', 'City B', true),
      Mazdoor('jnab', 'Electrician', '987-654-3210', 'City B', true),
      // Add more Mazdoors as needed
    ];

    return ListView.builder(
      itemCount: mazdoors.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              mazdoors[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Skill: ${mazdoors[index].skill}'),
                Text('Contact: ${mazdoors[index].contact}'),
                Text('Location: ${mazdoors[index].location}'),
                Text(
                    'Availability: ${mazdoors[index].availability ? 'Available' : 'Not Available'}'),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle hiring the Mazdoor
                  },
                  child: Text('Hire'),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    // Handle viewing the profile of the Mazdoor
                  },
                  child: Text('View Profile'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildJobsList() {
    // Your existing Jobs list code
    List<Job> jobs = [
      Job('Plumber Needed', '9:00 AM - 5:00 PM', 'City A', '123-456-7890', '\$20/hour'),
      Job('Electrician Wanted', 'Flexible', 'City B', '987-654-3210', '\$25/hour'),
      Job('job 1', 'Flexible', 'City B', '987-654-3210', '\$25/hour'),
      Job('job 2', '9:00 AM - 5:00 PM', 'City B', '987-654-3210', '\$25/hour'),
      Job('job 3', 'Flexible', 'City B', '987-654-3210', '\$25/hour'),
      // Add more Jobs as needed
    ];

    return ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              jobs[index].title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Timing: ${jobs[index].timing}'),
                Text('Location: ${jobs[index].location}'),
                Text('Contact: ${jobs[index].contact}'),
                Text('Salary: ${jobs[index].salary}'),
              ],
            ),
            trailing: ElevatedButton(
              onPressed: () {
                // Handle applying for the job
              },
              child: Text('Apply'),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Text(
              'User Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              // Replace the placeholder image with the logic to display the user's profile picture
              backgroundImage: AssetImage('images/logo.png'),
              radius: 30,
            ),
            title: Text('User Name'), // Replace with actual user's name
            subtitle: Text('user@email.com'), // Replace with actual user's email
          ),
          Divider(),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              _onItemTapped(2);
            },
          ),
          // Add more Drawer items as needed
          Divider(),
          ListTile(
            title: const Text('Logout'), // Placeholder for Logout button
            onTap: () {
              // Implement logout functionality
              Navigator.pushNamed(context, '/welcome'); // Close the drawer
              // Add your logout logic here
            },
          ),
        ],
      ),
    );
  }
}

class Mazdoor {
  final String name;
  final String skill;
  final String contact;
  final String location;
  final bool availability;

  Mazdoor(this.name, this.skill, this.contact, this.location, this.availability);
}

class Job {
  final String title;
  final String timing;
  final String location;
  final String contact;
  final String salary;

  Job(this.title, this.timing, this.location, this.contact, this.salary);
}
