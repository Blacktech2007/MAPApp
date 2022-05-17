import 'package:flutter/material.dart';
import 'package:garage/pages/ticketPage.dart';

class TicketsList extends StatelessWidget {
  const TicketsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          const ListTile(
            leading: Icon(Icons.star),
            title: Text('New Ticket'),
            trailing: Text('2'),
          ),
          const ListTile(
            leading: Icon(Icons.remove),
            title: Text('My Pending Ticket'),
            trailing: Text('2'),
          ),
          const ListTile(
            leading: Icon(Icons.add),
            title: Text('Overall Pending Ticket'),
            trailing: Text('2'),
          ),
          const ListTile(
            leading: Icon(Icons.done),
            title: Text('Solved Ticket'),
            trailing: Text('0'),
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewTickets(),
                      ));
                },
                child: const Text('Post New Ticket')),
          ),
        ],
      ),
    );
  }
}
