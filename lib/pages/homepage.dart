import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swakulasali_matrimony/include/widget.dart';
import 'package:swakulasali_matrimony/pages/settingspage.dart';

class HomePage extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    return AnimatedTheme(
      duration: Duration(milliseconds: 300),
      data: Theme.of(context),
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Swakulasali Matrimony', style: GoogleFonts.robotoMono(fontSize: 30)),
            leading: GestureDetector(onTap: (){AdaptiveTheme.of(context).toggleThemeMode();}, child: Icon(FontAwesomeIcons.moon),),
            actions: <Widget>[
              IconButton(
                icon: FaIcon(FontAwesomeIcons.cog),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));},
              ),
            ]
        ),
        body: SingleChildScrollView(

        ),
      ),
    );
  }
}