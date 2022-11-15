import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/converter_controller.dart';

class Bin2Dec extends StatelessWidget {
  const Bin2Dec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // here we ask the library to find the instance of the controller
    ConverterController controller = Get.find();
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          // this sintax expects to have the instance of the controller
          child: Obx(() => Text(
                // here we get the decimal value from the state
                '${controller.decimal}',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              )),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.centerRight,
          child: Obx(() => Text(
                // here we get the  binary value from the state
                '${controller.binary}',
                textAlign: TextAlign.right,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              )),
        ),
        Expanded(
          flex: 4,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "1",
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => controller.updateBinary(1),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      color: Theme.of(context).primaryColor,
                      child: Text(
                        "0",
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      // we raise a new event
                      onPressed: () => controller.updateBinary(0),
                    ),
                  ),
                ),
              ]),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(
              color: Theme.of(context).colorScheme.secondaryVariant,
              onPressed: () => controller.reset(),
              child: Text(
                "Reset",
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
