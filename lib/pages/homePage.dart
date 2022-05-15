import 'package:flutter/material.dart';
import 'ticketPage.dart' as tickets;
import 'accountPage.dart' as accounts;
import 'chatPage.dart' as chats;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Generate Ticket'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.notification_add),
                  text: 'Ticket',
                ),
                Tab(icon: Icon(Icons.messenger), text: 'Chats'),
                Tab(icon: Icon(Icons.settings), text: 'Account'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const tickets.Tickets(),
              chats.Chats(),
              accounts.Account()
            ],
          ),
        ),
      ),
    );
  }
}
