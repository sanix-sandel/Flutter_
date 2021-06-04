import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Order order = Order();

  String _validateItemRequired(String value) {
    //return "salut";
    return value.isEmpty ? "Item Required" : "Validated";
  }

  String _validateItemCount(String value) {
    int _valueAsInteger = value.isEmpty ? 0 : int.parse(value);
    return _valueAsInteger == 0 ? 'At least one item is Required' : 'Validated';
  }

  void _submitOrder() {
    if (_formStateKey.currentState!.validate()) {
      _formStateKey.currentState!.save();
      print('Order item: ${order.item}');
      print('Order Quantity: ${order.quantity}');
    }
  }

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
            child: Icon(Icons.photo_camera, size: 75.0, color: Colors.white70),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: _formStateKey,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Espresso',
                              labelText: 'Item',
                            ),
                            validator: (value) => _validateItemRequired(value!),
                            onSaved: (value) => order.item = value!,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: '3',
                              labelText: 'Quantity',
                            ),
                            validator: (value) => _validateItemCount(value!),
                            onSaved: (value) =>
                                order.quantity = int.parse(value!),
                          ),
                          Divider(height: 32.0),
                          ElevatedButton(
                            child: Text('Save'),
                            // color:Colors.lightGreen,
                            onPressed: () => _submitOrder(),
                          ),
                        ]),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}

class Order {
  late String item;
  late int quantity;
}
