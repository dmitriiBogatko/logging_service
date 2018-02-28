@TestOn('browser')
import 'package:logging_service/configure_logging_for_browser.dart';
import 'package:logging_service/logging_service.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

void main() {
  group('g', () {
    test('t', () {
      var loggingServiceMock = new LoggingServiceMock();
      ConfigureLoggingForBrowser.listenJsErrors(loggingServiceMock);

      print('test');
    });
  });
}


class LoggingServiceMock extends Mock implements LoggingService {}
