import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Page3Screen extends StatefulWidget {
  const Page3Screen({Key? key}) : super(key: key);

  @override
  State<Page3Screen> createState() => _Page3ScreenState();
}

class _Page3ScreenState extends State<Page3Screen> {
  double height = 0, width = 0, length = 0, price = 1700;
  final _formKey = GlobalKey<FormState>();

  Future<void> doSummary() async {
    //SimpleCalculate cal = SimpleCalculate();
    //double result = cal.sum(height, width);
    double result = SimpleCalculate.sum(height, width, length,price);
    double result2 = result * price;
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cubic of Summary'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('The Cubic is  $result Cubic metre '),
                Text('The Price per Cubic is  $result2 Baht '),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('concrete_calculator'),
      ),
      
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(22, 20, 20, 0),
              alignment: Alignment.topLeft,
              child: const Text('height'),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'input number for height meter',
                  hintText: 'input number for height meter',
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 32.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  height = double.parse(value);
                  //Do something with this value
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: 'number is required'),
                  PatternValidator('[0-9]',
                      errorText: 'enter only numerics 0-9')
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(22, 20, 20, 0),
              alignment: Alignment.topLeft,
              child: const Text('width'),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'input number for width meter',
                  hintText: 'input number for width meter',
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 32.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  width = double.parse(value);
                  //Do something with this value
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: 'number is required'),
                  PatternValidator('[0-9]',
                      errorText: 'enter only numerics 0-9')
                ]),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(22, 20, 20, 0),
              alignment: Alignment.topLeft,
              child: const Text('length'),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'input number for length meter',
                  hintText: 'input number for length meter',
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 32.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onChanged: (value) {
                  length = double.parse(value);
                  //Do something with this value
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: 'number is required'),
                  PatternValidator('[0-9]',
                      errorText: 'enter only numerics 0-9')
                ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text('Sum'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          doSummary();
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        
      ),
      
    );
  }
}

class SimpleCalculate {
  static double sum(double height, double width, double length, double price) {
    return (height / 100) * (width * length);
  }
}
