class UserModel {
  Map<String, dynamic> _info = {};

  Map<String, dynamic> getAll() {
    return _info;
  }

  void setAll(Map<String, dynamic> all) {
    _info = all;
  }

  String? getSkinName() {
    return _info['skinName'];
  }

  void setSkinName(String? skinName) {
    _info['skinName'] = skinName;
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
