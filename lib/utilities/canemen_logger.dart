import 'package:logger/web.dart';

class CanemenLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void error(String message) {
    _logger.e(message, stackTrace: StackTrace.current);
  }

  static void warning(String message) {
    _logger.w(message);
  }
}
