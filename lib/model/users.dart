class UserModel {
  Map<String, dynamic> _info = {
    'name': '...',
    'code': '...',
    'year': '...',
    'seme': '...',
    'ephoc': '...',
    'subj': '...',
    'coll': '...'
  };

  Map<String, dynamic> getAll() {
    return _info;
  }

  void setAll(Map<String, dynamic> all) {
    _info = all;
  }

  String getName() {
    return _info['name'];
  }

  void setName(String name) {
    _info['name'] = name;
  }

  String getCode() {
    return _info['code'];
  }

  void setCode(String code) {
    _info['code'] = code;
  }

  String getYear() {
    return _info['year'];
  }

  void setYear(String year) {
    _info['year'] = year;
  }

  String getSeme() {
    return _info['seme'];
  }

  void setSeme(String seme) {
    _info['seme'] = seme;
  }

  String getEphoc() {
    return _info['ephoc'];
  }

  void setEphoc(String ephoc) {
    _info['ephoc'] = ephoc;
  }

  String getSubj() {
    return _info['subj'];
  }

  void setSubj(String subj) {
    _info['subj'] = subj;
  }

  String getColl() {
    return _info['coll'];
  }

  void setColl(String coll) {
    _info['coll'] = coll;
  }
}
