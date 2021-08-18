import 'package:about/about.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:swakulasali_matrimony/include/widget.dart';
import 'package:wiredash/wiredash.dart';

class SettingsPage extends StatefulWidget with NavigationStates {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: Duration(milliseconds: 300),
      data: Theme.of(context),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Swakulasali Matrimony', style: TextStyle(fontSize: 30)),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [

                Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      'Feedback',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(
                      Icons.mail,
                    ),
                    onTap: () => Wiredash.of(context)?.show(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      'Rate Us',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow[900],
                    ),
                    onTap: null,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      'Share',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(FontAwesomeIcons.shareAlt),
                    onTap: null,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 10.0,
                  child: ListTile(
                    title: Text(
                      'About',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Icon(FontAwesomeIcons.infoCircle),
                    onTap: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));//
                      showAboutPage(
                        context: context,
                        applicationLegalese:
                        'Copyright © Naveen Jujaray, {{ year }}',
                        applicationDescription: const Text(
                            'Displays an About dialog, which describes the application.'),
                        children: <Widget>[
                          MarkdownPageListTile(
                            icon: Icon(Icons.list),
                            title: const Text('Changelog'),
                            filename: 'CHANGELOG.md',
                          ),
                          MarkdownPageListTile(
                            filename: 'CONTRIBUTING.md',
                            title: Text('Contributing'),
                            icon: Icon(Icons.share),
                          ),
                          MarkdownPageListTile(
                            filename: 'CODE_OF_CONDUCT.md',
                            title: Text('Code of conduct'),
                            icon: Icon(Icons.sentiment_satisfied),
                          ),
                          MarkdownPageListTile(
                            filename: 'LICENSE.md',
                            title: Text('View License'),
                            icon: Icon(Icons.description),
                          ),
                          LicensesPageListTile(
                            title: Text('Open Source Licenses'),
                            icon: Icon(Icons.favorite),
                          ),
                        ],
                        applicationIcon: const SizedBox(
                          width: 100,
                          height: 100,
                          child: Icon(FontAwesomeIcons.bookOpen,color: Colors.amber,),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
