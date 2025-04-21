import 'package:cloudinary/cloudinary.dart';

class CloudinaryService {
  final Cloudinary _cloudinary = Cloudinary.signedConfig(
    apiKey: '148432298429645',
    apiSecret: 'jk9bX9mi5NGQ239RYcMNls5-Za4',
    cloudName: 'dnzrsudfw',
  );

  Future<String?> uploadImage(String filePath) async {
    final response = await _cloudinary.upload(
      file: filePath,
      resourceType: CloudinaryResourceType.image,
    );
    return response.secureUrl;
  }
}
