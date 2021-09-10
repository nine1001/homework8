import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pageshow extends StatefulWidget {
  const pageshow({Key? key}) : super(key: key);

  @override
  _pageshowstate createState() => _pageshowstate();
}

class _pageshowstate extends State<pageshow> {
  var fontGoogle = "Sriracha";

  _buttonOnClickSetFont(var fontStyle) {
    setState(() {
      fontGoogle = fontStyle;
    });
  }

  Widget _showmessage() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "การเดินทางขากลับคงจะเหงาน่าดู",
                    style: GoogleFonts.getFont(fontGoogle, fontSize: 50),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _fontstyle() {
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
        child: Text("Font : ${fontGoogle}", style: TextStyle(fontSize: 20)));
  }

  Widget _buttonFont() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Container(
          child: Card(
              elevation: 5.0,
              child: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () => _buttonOnClickSetFont("Pattaya"),
                        style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: Text(
                          "Pattaya",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
                        )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () => _buttonOnClickSetFont("Thasadith"),
                        style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: Text(
                          "Thasadith",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
                        )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () => _buttonOnClickSetFont("Fahkwang"),
                        style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: Text(
                          "Fahkwang",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
                        )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () => _buttonOnClickSetFont("Sriracha"),
                        style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: Text(
                          "Sriracha",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
                        )),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 40,
                    width: 100,
                    child: ElevatedButton(
                        onPressed: () => _buttonOnClickSetFont("Mitr"),
                        style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                        child: Text(
                          "Mitr",
                          style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),
                        )),
                  ),
                  const SizedBox(width: 8),
                ],
              )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("THAI FONT VIEWER",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.white),),
        ),
        body: Container(
            decoration: const BoxDecoration(color: Colors.lightGreenAccent),
            child: SafeArea(
                child: Column(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: _showmessage(),
                  ),
                ),
                Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(children: [_fontstyle(), _buttonFont()])),
                )
              ],
            ))));
  }
}
