/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the TestKit type in your schema. */
@immutable
class TestKit extends Model {
  static const classType = const _TestKitModelType();
  final String id;
  final TestKitRemoteAllocation TestKitAllocation;
  final String barcode;
  final TestTypes test_type;
  final bool control_tested;
  final TemporalDate expiry_date;
  final String lot_number;
  final String testKitTestKitAllocationId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const TestKit._internal(
      {@required this.id,
      this.TestKitAllocation,
      this.barcode,
      this.test_type,
      this.control_tested,
      this.expiry_date,
      this.lot_number,
      this.testKitTestKitAllocationId});

  factory TestKit(
      {String id,
      TestKitRemoteAllocation TestKitAllocation,
      String barcode,
      TestTypes test_type,
      bool control_tested,
      TemporalDate expiry_date,
      String lot_number,
      String testKitTestKitAllocationId}) {
    return TestKit._internal(
        id: id == null ? UUID.getUUID() : id,
        TestKitAllocation: TestKitAllocation,
        barcode: barcode,
        test_type: test_type,
        control_tested: control_tested,
        expiry_date: expiry_date,
        lot_number: lot_number,
        testKitTestKitAllocationId: testKitTestKitAllocationId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestKit &&
        id == other.id &&
        TestKitAllocation == other.TestKitAllocation &&
        barcode == other.barcode &&
        test_type == other.test_type &&
        control_tested == other.control_tested &&
        expiry_date == other.expiry_date &&
        lot_number == other.lot_number &&
        testKitTestKitAllocationId == other.testKitTestKitAllocationId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("TestKit {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("barcode=" + "$barcode" + ", ");
    buffer.write("test_type=" +
        (test_type != null ? enumToString(test_type) : "null") +
        ", ");
    buffer.write("control_tested=" +
        (control_tested != null ? control_tested.toString() : "null") +
        ", ");
    buffer.write("expiry_date=" +
        (expiry_date != null ? expiry_date.format() : "null") +
        ", ");
    buffer.write("lot_number=" + "$lot_number" + ", ");
    buffer.write("testKitTestKitAllocationId=" + "$testKitTestKitAllocationId");
    buffer.write("}");

    return buffer.toString();
  }

  TestKit copyWith(
      {String id,
      TestKitRemoteAllocation TestKitAllocation,
      String barcode,
      TestTypes test_type,
      bool control_tested,
      TemporalDate expiry_date,
      String lot_number,
      String testKitTestKitAllocationId}) {
    return TestKit(
        id: id ?? this.id,
        TestKitAllocation: TestKitAllocation ?? this.TestKitAllocation,
        barcode: barcode ?? this.barcode,
        test_type: test_type ?? this.test_type,
        control_tested: control_tested ?? this.control_tested,
        expiry_date: expiry_date ?? this.expiry_date,
        lot_number: lot_number ?? this.lot_number,
        testKitTestKitAllocationId:
            testKitTestKitAllocationId ?? this.testKitTestKitAllocationId);
  }

  TestKit.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        TestKitAllocation = json['TestKitAllocation'] != null
            ? TestKitRemoteAllocation.fromJson(
                new Map<String, dynamic>.from(json['TestKitAllocation']))
            : null,
        barcode = json['barcode'],
        test_type =
            enumFromString<TestTypes>(json['test_type'], TestTypes.values),
        control_tested = json['control_tested'],
        expiry_date = json['expiry_date'] != null
            ? TemporalDate.fromString(json['expiry_date'])
            : null,
        lot_number = json['lot_number'],
        testKitTestKitAllocationId = json['testKitTestKitAllocationId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'TestKitAllocation': TestKitAllocation?.toJson(),
        'barcode': barcode,
        'test_type': enumToString(test_type),
        'control_tested': control_tested,
        'expiry_date': expiry_date?.format(),
        'lot_number': lot_number,
        'testKitTestKitAllocationId': testKitTestKitAllocationId
      };

  static final QueryField ID = QueryField(fieldName: "testKit.id");
  static final QueryField TESTKITALLOCATION = QueryField(
      fieldName: "TestKitAllocation",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (TestKitRemoteAllocation).toString()));
  static final QueryField BARCODE = QueryField(fieldName: "barcode");
  static final QueryField TEST_TYPE = QueryField(fieldName: "test_type");
  static final QueryField CONTROL_TESTED =
      QueryField(fieldName: "control_tested");
  static final QueryField EXPIRY_DATE = QueryField(fieldName: "expiry_date");
  static final QueryField LOT_NUMBER = QueryField(fieldName: "lot_number");
  static final QueryField TESTKITTESTKITALLOCATIONID =
      QueryField(fieldName: "testKitTestKitAllocationId");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "TestKit";
    modelSchemaDefinition.pluralName = "TestKits";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: TestKit.TESTKITALLOCATION,
        isRequired: false,
        ofModelName: (TestKitRemoteAllocation).toString(),
        associatedKey: TestKitRemoteAllocation.ID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.BARCODE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.TEST_TYPE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.CONTROL_TESTED,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.bool)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.EXPIRY_DATE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.date)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.LOT_NUMBER,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: TestKit.TESTKITTESTKITALLOCATIONID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _TestKitModelType extends ModelType<TestKit> {
  const _TestKitModelType();

  @override
  TestKit fromJson(Map<String, dynamic> jsonData) {
    return TestKit.fromJson(jsonData);
  }
}
