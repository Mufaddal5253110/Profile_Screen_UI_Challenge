import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          upperCard(height, width),
          detailCard(
            height,
            null,
            "Personal",
            "Date of Birth : ",
            "07 October 2000",
            "E-Mail : ",
            "samriddhodas.das8@gmail.com",
            "Location : ",
            "Kolkata, West Bengal",
          ),
          detailCard(
            height,
            Icons.cast_for_education,
            "Educaton",
            "B-Tech Software Engineering : ",
            "SRM Institute of Science & Technology <Board>",
            "Standard : ",
            "Second Year",
            "Location : ",
            "Chennai",
          ),
          detailCard(
            height,
            null,
            "Experience",
            "B-Tech Software Engineering : ",
            "SRM Institute of Science & Technology(2019-2023)",
            "B-Tech Software Engineering : ",
            "SRM Institute of Science & Technology(2019-2023)",
            "",
            "",
          ),
          editSuggestionBtn(height, width, context)
        ],
      ),
    );
  }

  Widget editSuggestionBtn(double height, double width, BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Button Clicked"),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 20),
        elevation: 5,
        shadowColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: height * 0.08,
          width: width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.blue[400],
              ],
            ),
          ),
          child: Center(
            child: Text(
              "EDIT SUGGESETED TARGETS",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Card detailCard(
    double height,
    IconData icon,
    String cardTitle,
    String title1,
    String detail1,
    String title2,
    String detail2,
    String title3,
    String detail3,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(8.0),
      elevation: 0,
      child: Container(
        height: height * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: Icon(
                          icon,
                          color: Colors.blue,
                        ),
                      ),
                      cardTitleText(cardTitle),
                    ],
                  ),
                ),
                editButton(),
              ],
            ),
            cardDetailText(title1, detail1),
            cardDetailText(title2, detail2),
            cardDetailText(title3, detail3),
          ],
        ),
      ),
    );
  }

  Container cardDetailText(String title, String detail) {
    return Container(
      constraints: BoxConstraints(maxWidth: 350),
      margin: EdgeInsets.only(left: 15, bottom: 5),
      child: RichText(
        maxLines: 2,
        text: TextSpan(
          text: title,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          children: [
            TextSpan(
              text: detail,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container editButton() {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(4.0),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        color: Colors.blue,
      ),
      child: Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
  }

  Text cardTitleText(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }

  Card upperCard(double height, double width) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      elevation: 0,
      child: Container(
        height: height * 0.3,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blue[400],
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          "Sign out",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/prof_pic_1.jpg'),
              ),
              title: Text(
                "Arnav Sharma",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: RichText(
                text: TextSpan(
                  text: "Target Industry : ",
                  children: [
                    TextSpan(
                      text: "Software Engineering",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.only(left: width * 0.06),
              width: width * 0.85,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) => Container(
                      // from 0 to 1 it takes 20s
                      width: constraints.maxWidth * 0.65,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Container(
              margin: EdgeInsets.only(left: width * 0.06),
              child: Text(
                "65% Profile Completed",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
