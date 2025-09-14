import 'package:smart_home/data/remote/handler/api_handler.dart';

class ModuleApi {
  final ApiHandler moduleApiHandler;
  final ApiHandler apiHandler;

  ModuleApi({
    required this.moduleApiHandler,
    required this.apiHandler,
  });

  // Future<Map<String, dynamic>> getShortDeviceInfo() async {
  //   final resp = await moduleApiHandler.get(
  //     '/device_info',
  //   );
  //   return resp;
  // }

  Future<Map<String, dynamic>> getShortDeviceInfo() async {
    try {
      print('📟 GET /device_info...');
      final resp = await moduleApiHandler.get('/device_info');
      print('✅ /device_info response: $resp');
      return resp;
    } catch (e, stack) {
      print('❌ Error in /device_info: $e');
      print('📛 Stacktrace: $stack');
      return {}; // Trả về map rỗng để xử lý phía trên
    }
  }

  Future<List<dynamic>> getNearbyWiFi() async {
    try {
      print('🌐 GET /nearby_wifi');
      final resp = await moduleApiHandler.get('/nearby_wifi');
      print('✅ /nearby_wifi Response: $resp');
      return resp;
    } catch (e, stack) {
      print('❌ /nearby_wifi error: $e');
      print('📛 Stacktrace: $stack');
      return []; // tránh throw ra ngoài, để retry
    }
  }
  // Future<List<dynamic>> getNearbyWiFi() async {
  //   final resp = await moduleApiHandler.get('/nearby_wifi');
  //   return resp;
  // }

  // Future<void> connectWifi(String ssid, String password, String ownerId) {
  //   return moduleApiHandler.post(
  //     '/connect',
  //     queryParameters: {
  //       'ssid': ssid,
  //       'pass': password,
  //       'owner': ownerId,
  //     },
  //   );
  // }

  Future<void> connectWifi(String ssid, String password, String ownerId) async {
    try {
      await moduleApiHandler.get(
        '/connect',
        queryParameters: {
          'ssid': ssid,
          'pass': password,
          'owner': ownerId,
        },
      );
    } catch (e) {
      print('❌ Failed to connect WiFi: $e');

      rethrow; // vẫn throw lại lỗi nếu cần xử lý ở UI
    }
  }

  Future<List<dynamic>> getModules() async {
    final resp = await apiHandler.get(
      '/module/modules',
    );
    return resp;
  }

  Future<Map<String, dynamic>> moduleDetail(int moduleId) async {
    final resp = await apiHandler.get(
      '/module/$moduleId',
    );
    return resp;
  }

  Future<Map<String, dynamic>> getWeatherForecast() async {
    final resp = await apiHandler.get('/weather');

    return resp;
  }

  Future<Map<String, dynamic>> addRoom(Map<String, dynamic> params) async {
    
    final resp = await apiHandler.post('/rooms/create', body: params);

    return resp;
  }

  Future<List<dynamic>> getImage() async {
    final resp = await apiHandler.get('/images/image');
    return resp;
  }

  Future<List<dynamic>> getRooms(String homeId) async {
    
    final resp = await apiHandler.get('/rooms/home/$homeId');
    return resp;
  }

  // Future<Map<String, dynamic>> updateNameNode(
  //     Map<String, dynamic> params) async {
  //   final resp = await apiHandler.put('/module/node/rename', body: params);
  //   return resp;
  // }

  // Future<List<dynamic>> getHisConnection(
  //     String? moduleId, Map<String, dynamic> params) async {
  //   final resp = await apiHandler
  //       .get('/module/$moduleId/state/history', queryParameters: params);
  //   return resp;
  // }
}
