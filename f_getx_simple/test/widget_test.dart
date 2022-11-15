import 'package:f_getx_simple/ui/controllers/controller.dart';
import 'package:f_getx_simple/ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

class MockColorController extends GetxService
    with Mock
    implements MyController {
  var _isRed = false.obs;

  @override
  bool get isRed => _isRed.value;

  @override
  void changeRed() {
    _isRed.value = _isRed.value == true ? false : true;
  }
}

void main() {
  testWidgets('Color change widget', (WidgetTester tester) async {
    MockColorController mockColorController = MockColorController();
    Get.put<MyController>(mockColorController);

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: HomePage()),
    ));

    expect(
        (tester.firstWidget(find.byKey(const Key('ColorContainer')))
                as Container)
            .color,
        Colors.blue);

    await tester.tap(find.byKey(const Key('ColorButton')));

    await tester.pump(const Duration(milliseconds: 50));

    expect(
        (tester.firstWidget(find.byKey(const Key('ColorContainer')))
                as Container)
            .color,
        Colors.red);
  });
}
