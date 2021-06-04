import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Home'),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ],
            flexibleSpace: SafeArea(
              child:
                  Icon(Icons.photo_camera, size: 75.0, color: Colors.white70),
            ),
            bottom: PopupMenuButtonWidget()),
        /*PreferredSize(
            child: Container(
                color: Colors.lightGreen.shade100,
                height: 75.0,
                width: double.infinity,
                child: Center(
                  child: Text('Bottom'),
                )),
            preferredSize: Size.fromHeight(75.0),
          )),*/
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    const ImagesAndIconWidget(),
                    Divider(),
                    const BoxDecoratorWidget(),
                    Divider(),
                    const InputDecoratorsWidget(),
                  ],
                )),
          ),
        ));
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 100.0,
        width: 100.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: Colors.orange,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ]),
      ),
    );
  }
}

class InputDecoratorsWidget extends StatelessWidget {
  const InputDecoratorsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        keyboardType: TextInputType.text,
        style: TextStyle(color: Colors.grey.shade800, fontSize: 16.0),
        decoration: InputDecoration(
          labelText: "Notes",
          labelStyle: TextStyle(color: Colors.purple),
          border: OutlineInputBorder(),
        ),
      ),
      Divider(
        color: Colors.lightGreen,
        height: 50.0,
      ),
      TextFormField(
        decoration: InputDecoration(labelText: 'Enter your notes'),
      )
    ]);
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/logo.png"),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width / 3,
        ),
        Image.network(
          'https://flutter.io/images/catalog­widget­placeholder.png',
          width: MediaQuery.of(context).size.width / 3,
        ),
        Icon(
          Icons.brush,
          color: Colors.lightBlue,
          size: 48.0,
        ),
      ],
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100.0),
                bottomRight: Radius.circular(10.0)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500,
              ],
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0))
            ],
          ),
          child: Center(
              child: RichText(
                  text: TextSpan(
                      text: 'Flutter World',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.deepPurple,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.deepPurpleAccent,
                        decorationStyle: TextDecorationStyle.dotted,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                TextSpan(text: ' for'),
                TextSpan(
                  text: ' Mobile',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                )
              ])))),
    ]);
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3'),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('Row 1'),
            Padding(padding: EdgeInsets.all(16.0)),
            Text('Row 2'),
            Padding(padding: EdgeInsets.all(16.0)),
            Text('Row 3'),
          ],
        ),
      ],
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'Columns and Row Nesting 1',
        ),
        Text(
          'Columns and Row Nesting 2',
        ),
        Text(
          'Columns and Row Nesting 3',
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Row Nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3'),
          ],
        ),
      ],
    );
  }
}

class TodoMenuItem {
  final String title;
  final Icon icon;
  TodoMenuItem({required this.title, required this.icon});
}

List<TodoMenuItem> foodMenuList = [
  TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.flight)),
  TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
];

class PopupMenuButtonWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PopupMenuButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height: preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected) {
            print('valueSelected: ${valueSelected.title}');
          }),
          itemBuilder: (BuildContext context) {
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                  value: todoMenuItem,
                  child: Row(
                    children: <Widget>[
                      Icon(todoMenuItem.icon.icon),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                      ),
                      Text(todoMenuItem.title),
                    ],
                  ));
            }).toList();
          },
        ),
      ),
    );
  }

  @override
  //implement preferredSize
  Size get preferredSize => Size.fromHeight(75.0);
}
