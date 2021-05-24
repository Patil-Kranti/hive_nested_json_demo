// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hiveModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveModelAdapter extends TypeAdapter<HiveModel> {
  @override
  final int typeId = 1;

  @override
  HiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveModel(
      status: fields[1] as int,
      message: fields[2] as String,
      totalCount: fields[3] as int,
      data: (fields[4] as List).cast<Data>(),
      questions: (fields[5] as List).cast<Questions>(),
    );
  }

  @override
  void write(BinaryWriter writer, HiveModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(1)
      ..write(obj.status)
      ..writeByte(2)
      ..write(obj.message)
      ..writeByte(3)
      ..write(obj.totalCount)
      ..writeByte(4)
      ..write(obj.data)
      ..writeByte(5)
      ..write(obj.questions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataAdapter extends TypeAdapter<Data> {
  @override
  final int typeId = 2;

  @override
  Data read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Data(
      id: fields[6] as String?,
      policyNo: fields[7] as String?,
      patientName: fields[8] as String?,
      phone: fields[9] as String?,
      emailAddress: fields[10] as String?,
      pancard: fields[11] as String?,
      aadharId: fields[12] as String?,
      dob: fields[13] as String?,
      nomineeName: fields[14] as String?,
      nomineeDob: fields[15] as String?,
      address: fields[16] as String?,
      city: fields[17] as String?,
      state: fields[18] as String?,
      gName: fields[19] as String?,
      statusId: fields[20] as String?,
      statusName: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Data obj) {
    writer
      ..writeByte(16)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.policyNo)
      ..writeByte(8)
      ..write(obj.patientName)
      ..writeByte(9)
      ..write(obj.phone)
      ..writeByte(10)
      ..write(obj.emailAddress)
      ..writeByte(11)
      ..write(obj.pancard)
      ..writeByte(12)
      ..write(obj.aadharId)
      ..writeByte(13)
      ..write(obj.dob)
      ..writeByte(14)
      ..write(obj.nomineeName)
      ..writeByte(15)
      ..write(obj.nomineeDob)
      ..writeByte(16)
      ..write(obj.address)
      ..writeByte(17)
      ..write(obj.city)
      ..writeByte(18)
      ..write(obj.state)
      ..writeByte(19)
      ..write(obj.gName)
      ..writeByte(20)
      ..write(obj.statusId)
      ..writeByte(21)
      ..write(obj.statusName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class QuestionsAdapter extends TypeAdapter<Questions> {
  @override
  final int typeId = 3;

  @override
  Questions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Questions(
      qId: fields[22] as String,
      name: fields[23] as String,
      option: (fields[24] as List).cast<Option>(),
    );
  }

  @override
  void write(BinaryWriter writer, Questions obj) {
    writer
      ..writeByte(3)
      ..writeByte(22)
      ..write(obj.qId)
      ..writeByte(23)
      ..write(obj.name)
      ..writeByte(24)
      ..write(obj.option);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OptionAdapter extends TypeAdapter<Option> {
  @override
  final int typeId = 4;

  @override
  Option read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Option(
      oId: fields[25] as String,
      oName: fields[26] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Option obj) {
    writer
      ..writeByte(2)
      ..writeByte(25)
      ..write(obj.oId)
      ..writeByte(26)
      ..write(obj.oName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
