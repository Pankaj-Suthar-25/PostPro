import 'package:cloudinary/cloudinary.dart';

class CloudinaryService {
  final Cloudinary _cloudinary = Cloudinary.signedConfig(
    apiKey: 'your_api_key',
    apiSecret: 'your_api_secret',
    cloudName: 'your_cloud_name',
  );

  Future<String?> uploadImage(String filePath) async {
    final response = await _cloudinary.upload(
      file: filePath,
      resourceType: CloudinaryResourceType.image,
    );
    return response.secureUrl;
  }
}
