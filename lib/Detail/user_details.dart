class userDetails {
  String? _status;
  bool? _success;
  String? _message;
  Data? _data;

  userDetails({String? status, bool? success, String? message, Data? data}) {
    if (status != null) {
      this._status = status;
    }
    if (success != null) {
      this._success = success;
    }
    if (message != null) {
      this._message = message;
    }
    if (data != null) {
      this._data = data;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  bool? get success => _success;
  set success(bool? success) => _success = success;
  String? get message => _message;
  set message(String? message) => _message = message;
  Data? get data => _data;
  set data(Data? data) => _data = data;

  userDetails.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _success = json['success'];
    _message = json['message'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['success'] = this._success;
    data['message'] = this._message;
    if (this._data != null) {
      data['data'] = this._data!.toJson();
    }
    return data;
  }
}

class Data {
  String? _userProfile;
  String? _dateOfBirth;
  int? _age;
  int? _userId;
  String? _userFullName;
  String? _userEmail;
  String? _userPassword;
  String? _userType;
  String? _nationality;
  String? _languages;
  String? _currency;
  String? _gender;
  String? _createdAt;
  String? _updatedAt;
  List<CitysArr>? _citysArr;
  ApiParameters? _apiParameters;
  String? _loginType;

  Data(
      {String? userProfile,
        String? dateOfBirth,
        int? age,
        int? userId,
        String? userFullName,
        String? userEmail,
        String? userPassword,
        String? userType,
        String? nationality,
        String? languages,
        String? currency,
        String? gender,
        String? createdAt,
        String? updatedAt,
        List<CitysArr>? citysArr,
        ApiParameters? apiParameters,
        String? loginType}) {
    if (userProfile != null) {
      this._userProfile = userProfile;
    }
    if (dateOfBirth != null) {
      this._dateOfBirth = dateOfBirth;
    }
    if (age != null) {
      this._age = age;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (userFullName != null) {
      this._userFullName = userFullName;
    }
    if (userEmail != null) {
      this._userEmail = userEmail;
    }
    if (userPassword != null) {
      this._userPassword = userPassword;
    }
    if (userType != null) {
      this._userType = userType;
    }
    if (nationality != null) {
      this._nationality = nationality;
    }
    if (languages != null) {
      this._languages = languages;
    }
    if (currency != null) {
      this._currency = currency;
    }
    if (gender != null) {
      this._gender = gender;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (citysArr != null) {
      this._citysArr = citysArr;
    }
    if (apiParameters != null) {
      this._apiParameters = apiParameters;
    }
    if (loginType != null) {
      this._loginType = loginType;
    }
  }

  String? get userProfile => _userProfile;
  set userProfile(String? userProfile) => _userProfile = userProfile;
  String? get dateOfBirth => _dateOfBirth;
  set dateOfBirth(String? dateOfBirth) => _dateOfBirth = dateOfBirth;
  int? get age => _age;
  set age(int? age) => _age = age;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  String? get userFullName => _userFullName;
  set userFullName(String? userFullName) => _userFullName = userFullName;
  String? get userEmail => _userEmail;
  set userEmail(String? userEmail) => _userEmail = userEmail;
  String? get userPassword => _userPassword;
  set userPassword(String? userPassword) => _userPassword = userPassword;
  String? get userType => _userType;
  set userType(String? userType) => _userType = userType;
  String? get nationality => _nationality;
  set nationality(String? nationality) => _nationality = nationality;
  String? get languages => _languages;
  set languages(String? languages) => _languages = languages;
  String? get currency => _currency;
  set currency(String? currency) => _currency = currency;
  String? get gender => _gender;
  set gender(String? gender) => _gender = gender;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  List<CitysArr>? get citysArr => _citysArr;
  set citysArr(List<CitysArr>? citysArr) => _citysArr = citysArr;
  ApiParameters? get apiParameters => _apiParameters;
  set apiParameters(ApiParameters? apiParameters) =>
      _apiParameters = apiParameters;
  String? get loginType => _loginType;
  set loginType(String? loginType) => _loginType = loginType;

  Data.fromJson(Map<String, dynamic> json) {
    _userProfile = json['user_profile'];
    _dateOfBirth = json['date_of_birth'];
    _age = json['age'];
    _userId = json['user_id'];
    _userFullName = json['user_full_name'];
    _userEmail = json['user_email'];
    _userPassword = json['user_password'];
    _userType = json['user_type'];
    _nationality = json['nationality'];
    _languages = json['languages'];
    _currency = json['currency'];
    _gender = json['gender'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    if (json['citys_arr'] != null) {
      _citysArr = <CitysArr>[];
      json['citys_arr'].forEach((v) {
        _citysArr!.add(new CitysArr.fromJson(v));
      });
    }
    _apiParameters = json['apiParameters'] != null
        ? new ApiParameters.fromJson(json['apiParameters'])
        : null;
    _loginType = json['login_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_profile'] = this._userProfile;
    data['date_of_birth'] = this._dateOfBirth;
    data['age'] = this._age;
    data['user_id'] = this._userId;
    data['user_full_name'] = this._userFullName;
    data['user_email'] = this._userEmail;
    data['user_password'] = this._userPassword;
    data['user_type'] = this._userType;
    data['nationality'] = this._nationality;
    data['languages'] = this._languages;
    data['currency'] = this._currency;
    data['gender'] = this._gender;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    if (this._citysArr != null) {
      data['citys_arr'] = this._citysArr!.map((v) => v.toJson()).toList();
    }
    if (this._apiParameters != null) {
      data['apiParameters'] = this._apiParameters!.toJson();
    }
    data['login_type'] = this._loginType;
    return data;
  }
}

class CitysArr {
  int? _cityId;
  String? _cityName;
  String? _cityLatitude;
  String? _cityLongitude;
  String? _createdAt;
  String? _updatedAt;
  UserSelectedCitys? _userSelectedCitys;

  CitysArr(
      {int? cityId,
        String? cityName,
        String? cityLatitude,
        String? cityLongitude,
        String? createdAt,
        String? updatedAt,
        UserSelectedCitys? userSelectedCitys}) {
    if (cityId != null) {
      this._cityId = cityId;
    }
    if (cityName != null) {
      this._cityName = cityName;
    }
    if (cityLatitude != null) {
      this._cityLatitude = cityLatitude;
    }
    if (cityLongitude != null) {
      this._cityLongitude = cityLongitude;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (userSelectedCitys != null) {
      this._userSelectedCitys = userSelectedCitys;
    }
  }

  int? get cityId => _cityId;
  set cityId(int? cityId) => _cityId = cityId;
  String? get cityName => _cityName;
  set cityName(String? cityName) => _cityName = cityName;
  String? get cityLatitude => _cityLatitude;
  set cityLatitude(String? cityLatitude) => _cityLatitude = cityLatitude;
  String? get cityLongitude => _cityLongitude;
  set cityLongitude(String? cityLongitude) => _cityLongitude = cityLongitude;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  UserSelectedCitys? get userSelectedCitys => _userSelectedCitys;
  set userSelectedCitys(UserSelectedCitys? userSelectedCitys) =>
      _userSelectedCitys = userSelectedCitys;

  CitysArr.fromJson(Map<String, dynamic> json) {
    _cityId = json['city_id'];
    _cityName = json['city_name'];
    _cityLatitude = json['city_latitude'];
    _cityLongitude = json['city_longitude'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _userSelectedCitys = json['user_selected_citys'] != null
        ? new UserSelectedCitys.fromJson(json['user_selected_citys'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city_id'] = this._cityId;
    data['city_name'] = this._cityName;
    data['city_latitude'] = this._cityLatitude;
    data['city_longitude'] = this._cityLongitude;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    if (this._userSelectedCitys != null) {
      data['user_selected_citys'] = this._userSelectedCitys!.toJson();
    }
    return data;
  }
}

class UserSelectedCitys {
  int? _id;
  int? _userId;
  int? _cityId;
  String? _createdAt;
  String? _updatedAt;

  UserSelectedCitys(
      {int? id,
        int? userId,
        int? cityId,
        String? createdAt,
        String? updatedAt}) {
    if (id != null) {
      this._id = id;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (cityId != null) {
      this._cityId = cityId;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  int? get cityId => _cityId;
  set cityId(int? cityId) => _cityId = cityId;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;

  UserSelectedCitys.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _userId = json['user_id'];
    _cityId = json['city_id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['user_id'] = this._userId;
    data['city_id'] = this._cityId;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    return data;
  }
}

class ApiParameters {
  int? _id;
  Null? _adminId;
  int? _userId;
  Null? _agentId;
  String? _token;

  ApiParameters(
      {int? id, Null? adminId, int? userId, Null? agentId, String? token}) {
    if (id != null) {
      this._id = id;
    }
    if (adminId != null) {
      this._adminId = adminId;
    }
    if (userId != null) {
      this._userId = userId;
    }
    if (agentId != null) {
      this._agentId = agentId;
    }
    if (token != null) {
      this._token = token;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  Null? get adminId => _adminId;
  set adminId(Null? adminId) => _adminId = adminId;
  int? get userId => _userId;
  set userId(int? userId) => _userId = userId;
  Null? get agentId => _agentId;
  set agentId(Null? agentId) => _agentId = agentId;
  String? get token => _token;
  set token(String? token) => _token = token;

  ApiParameters.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _adminId = json['admin_id'];
    _userId = json['user_id'];
    _agentId = json['agent_id'];
    _token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['admin_id'] = this._adminId;
    data['user_id'] = this._userId;
    data['agent_id'] = this._agentId;
    data['token'] = this._token;
    return data;
  }
}
