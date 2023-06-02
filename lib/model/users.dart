class UserModel {
  Map<String, dynamic> _info = {
    'name': ' ',
    'code': ' ',
    'ano': ' ',
    'semestre': ' ',
    'etapa': ' '
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

  String getAno() {
    return _info['ano'];
  }

  void setAno(String ano) {
    _info['ano'] = ano;
  }

  String getSemestre() {
    return _info['semetre'];
  }

  void setSemestre(String semestre) {
    _info['semestre'] = semestre;
  }

  String getEtapa() {
    return _info['etapa'];
  }

  void setEtapa(String etapa) {
    _info['etapa'] = etapa;
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
