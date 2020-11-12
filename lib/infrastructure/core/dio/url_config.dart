import 'dart:io';
import 'package:injectable/injectable.dart';

abstract class IUrlConfig {
  String get baseWebsiteUrl;
  String get baseApiUrl;
}

@Injectable(as: IUrlConfig, env: [Environment.prod])
class UrlConfig extends IUrlConfig {
  String get baseApiUrl => 'https://api.example.com';
  String get baseWebsiteUrl => 'https://www.example.com';
}

@Injectable(as: IUrlConfig, env: [Environment.test])
@Injectable(as: IUrlConfig)
class StagingUrlConfig extends IUrlConfig {
  String get baseApiUrl => 'https://test-api.example.com';
  String get baseWebsiteUrl => 'https://test.example.com';
}

@Injectable(as: IUrlConfig, env: [Environment.dev])
@Injectable(as: IUrlConfig)
class LocalUrlConfig extends IUrlConfig {
  String get baseApiUrl =>
      Platform.isAndroid ? 'http://10.0.2.2:5000' : 'http://localhost:5000';
  String get baseWebsiteUrl => 'https://www.example.com';
}
