import 'package:hive/hive.dart';

part 'hiveModel.g.dart';

@HiveType(typeId: 1)
class HiveModel extends HiveObject {
  @HiveField(1)
  late int status;
  @HiveField(2)
  late String message;
  @HiveField(3)
  late int totalCount;
  @HiveField(4)
  late List<Data> data;
  @HiveField(5)
  late List<Questions> questions;

  HiveModel({required this.status, required this.message, required this.totalCount, required this.data, required this.questions});

  HiveModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    totalCount = json['total_count'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      questions = <Questions>[];
      json['questions'].forEach((v) {
        questions.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['total_count'] = this.totalCount;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.questions != null) {
      data['questions'] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 2)
class Data extends HiveObject{
  @HiveField(6)
  late String? id;
  @HiveField(7)
  late String? policyNo;
  @HiveField(8)
  late String? patientName;
  @HiveField(9)
  late String? phone;
  @HiveField(10)
  late String? emailAddress;
  @HiveField(11)
  late String? pancard;
  @HiveField(12)
  late String? aadharId;
  @HiveField(13)
  late String? dob;
  @HiveField(14)
  late String? nomineeName;
  @HiveField(15)
  late String? nomineeDob;
  @HiveField(16)
  late String? address;
  @HiveField(17)
  late String? city;
  @HiveField(18)
  late String? state;
  @HiveField(19)
  late String? gName;
  @HiveField(20)
  late String? statusId;
  @HiveField(21)
  late String? statusName;

  Data(
      {this.id,
      this.policyNo,
      this.patientName,
      this.phone,
      this.emailAddress,
      this.pancard,
      this.aadharId,
      this.dob,
      this.nomineeName,
      this.nomineeDob,
      this.address,
      this.city,
      this.state,
      this.gName,
      this.statusId,
      this.statusName});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    policyNo = json['policy_no'];
    patientName = json['patient_name'];
    phone = json['phone'];
    emailAddress = json['email_address'];
    pancard = json['pancard'];
    aadharId = json['aadhar_id'];
    dob = json['dob'];
    nomineeName = json['nominee_name'];
    nomineeDob = json['nominee_dob'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    gName = json['g_name'];
    statusId = json['status_id'];
    statusName = json['status_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['policy_no'] = this.policyNo;
    data['patient_name'] = this.patientName;
    data['phone'] = this.phone;
    data['email_address'] = this.emailAddress;
    data['pancard'] = this.pancard;
    data['aadhar_id'] = this.aadharId;
    data['dob'] = this.dob;
    data['nominee_name'] = this.nomineeName;
    data['nominee_dob'] = this.nomineeDob;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['g_name'] = this.gName;
    data['status_id'] = this.statusId;
    data['status_name'] = this.statusName;
    return data;
  }
}

@HiveType(typeId: 3)
class Questions extends HiveObject{
  @HiveField(22)
  late String qId;
  @HiveField(23)
  late String name;
  @HiveField(24)
  late List<Option> option;

  Questions({required this.qId, required this.name, required this.option});

  Questions.fromJson(Map<String, dynamic> json) {
    qId = json['q_id'];
    name = json['name'];
    if (json['option'] != null) {
      option = <Option>[];
      json['option'].forEach((v) {
        option.add(new Option.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['q_id'] = this.qId;
    data['name'] = this.name;
    if (this.option != null) {
      data['option'] = this.option.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@HiveType(typeId: 4)
class Option {
  @HiveField(25)
  late String oId;
  @HiveField(26)
  late String oName;

  Option({required this.oId, required this.oName});

  Option.fromJson(Map<String, dynamic> json) {
    oId = json['o_id'];
    oName = json['o_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['o_id'] = this.oId;
    data['o_name'] = this.oName;
    return data;
  }
}
