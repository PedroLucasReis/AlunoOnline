class UserModel {
  Map<String, dynamic> _info = {};

  Map<String, dynamic> getAll() {
    return _info;
  }

  void setAll(Map<String, dynamic> all) {
    _info = all;
  }

  String? getName() {
    return _info['name'];
  }

  void setName(String? name) {
    _info['name'] = name;
  }

  String? getCode() {
    return _info['code'];
  }

  void setCode(String? code) {
    _info['code'] = code;
  }

  String? getEmail() {
    return _info['name'];
  }

  void setEmail(String? email) {
    _info['email'] = email;
  }

  String getPhotoUrl() {
    if (_info['photoUrl'] != null) {
      return _info['photoUrl'];
    } else {
      return 'photoUrl';
    }
  }

  void setPhotoUrl(String? photoUrl) {
    _info['photoUrl'] = photoUrl;
  }
}
