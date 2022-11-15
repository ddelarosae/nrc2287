import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/converter_controller.dart';

class Dec2Bin extends StatelessWidget {
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
              child: Obx(
                () => Text(
                  // here we get the decimal value from the state
                  '${controller.decimal}',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.centerRight,
            child: Obx(() => Text(
                  // here we get the binary value from the state
                  '${controller.binary}',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                )),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "1",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // we raise a new event
                    onPressed: () => controller.updateDecimal(1),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "2",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // we raise a new event
                    onPressed: () => controller.updateDecimal(2),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "3",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    // we raise a new event
                    onPressed: () => controller.updateDecimal(3),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "4",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(4),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "5",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(5),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "6",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(6),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "7",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(7),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "8",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(8),
                  ),
                )),
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      "9",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => controller.updateDecimal(9),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                        color: Theme.of(context).colorScheme.secondaryVariant,
                        onPressed: () => controller.reset(),
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: MaterialButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () => controller.updateDecimal(0),
                      ),
                    )),
              ],
            ),
          )),
        ]));
  }
}
