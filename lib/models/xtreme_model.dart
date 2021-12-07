/// userID : "7ca6879f-8324-4bef-81af-d2d53e666d1f"
/// name : "admin"
/// username : "admin"
/// password : "123"
/// roleID : "9e147fa1-ad98-4d54-ba97-cc4deec142f7"
/// roleName : "admin"

class XtremeModel {
  XtremeModel({
      String? userID, 
      String? name, 
      String? username, 
      String? password, 
      String? roleID, 
      String? roleName,}){
    _userID = userID;
    _name = name;
    _username = username;
    _password = password;
    _roleID = roleID;
    _roleName = roleName;
}

  XtremeModel.fromJson(dynamic json) {
    _userID = json['userID'];
    _name = json['name'];
    _username = json['username'];
    _password = json['password'];
    _roleID = json['roleID'];
    _roleName = json['roleName'];
  }
  String? _userID;
  String? _name;
  String? _username;
  String? _password;
  String? _roleID;
  String? _roleName;

  String? get userID => _userID;
  String? get name => _name;
  String? get username => _username;
  String? get password => _password;
  String? get roleID => _roleID;
  String? get roleName => _roleName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userID'] = _userID;
    map['name'] = _name;
    map['username'] = _username;
    map['password'] = _password;
    map['roleID'] = _roleID;
    map['roleName'] = _roleName;
    return map;
  }

}