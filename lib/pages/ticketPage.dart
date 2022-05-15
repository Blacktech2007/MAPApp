import 'package:flutter/material.dart';

class Tickets extends StatelessWidget {
  const Tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'New Ticket',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              runSpacing: 20,
              children: [
                Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      'Subject',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      'System BSOD',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
                Wrap(
                  children: [
                    Card(
                      child: ListTile(
                        title: Text(
                          'Content',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(),
                      child: Text(
                        'Lorem Ipsum cogito ergo sum descarte dummy text Lorem '
                        'Ipsum cogito ergo sum descarte dummy text Lorem Ipsum cogito '
                        'ergo sum descarte dummy text Lorem Ipsum cogito ergo sum descarte dummy '
                        'text Lorem Ipsum cogito ergo sum descarte dummy textLorem Ipsum cogito '
                        'ergo sum descarte dummy text Lorem Ipsum cogito ergo sum '
                        'descarte dummy text',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () => null,
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
