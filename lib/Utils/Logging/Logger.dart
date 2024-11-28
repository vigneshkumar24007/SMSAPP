import 'package:logger/logger.dart';

class T_LoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String messege) {
    _logger.i(messege);
  }

  static void warning(String messege) {
    _logger.w(messege);
  }

  static void error(String messege, [dynamic error]) {
    _logger.e(messege, error: error, stackTrace: StackTrace.current);
  }
}
