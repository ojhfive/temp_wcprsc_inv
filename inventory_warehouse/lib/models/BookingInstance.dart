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

/** This is an auto generated class representing the BookingInstance type in your schema. */
@immutable
class BookingInstance extends Model {
  static const classType = const _BookingInstanceModelType();
  final String id;
  final TestKitRemoteAllocation TestKitAllocation;
  final TemporalDateTime appointment_datetime;
  final String customerID;
  final String bookingInstanceTestKitAllocationId;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const BookingInstance._internal(
      {@required this.id,
      this.TestKitAllocation,
      this.appointment_datetime,
      this.customerID,
      this.bookingInstanceTestKitAllocationId});

  factory BookingInstance(
      {String id,
      TestKitRemoteAllocation TestKitAllocation,
      TemporalDateTime appointment_datetime,
      String customerID,
      String bookingInstanceTestKitAllocationId}) {
    return BookingInstance._internal(
        id: id == null ? UUID.getUUID() : id,
        TestKitAllocation: TestKitAllocation,
        appointment_datetime: appointment_datetime,
        customerID: customerID,
        bookingInstanceTestKitAllocationId: bookingInstanceTestKitAllocationId);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingInstance &&
        id == other.id &&
        TestKitAllocation == other.TestKitAllocation &&
        appointment_datetime == other.appointment_datetime &&
        customerID == other.customerID &&
        bookingInstanceTestKitAllocationId ==
            other.bookingInstanceTestKitAllocationId;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("BookingInstance {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("appointment_datetime=" +
        (appointment_datetime != null
            ? appointment_datetime.format()
            : "null") +
        ", ");
    buffer.write("customerID=" + "$customerID" + ", ");
    buffer.write("bookingInstanceTestKitAllocationId=" +
        "$bookingInstanceTestKitAllocationId");
    buffer.write("}");

    return buffer.toString();
  }

  BookingInstance copyWith(
      {String id,
      TestKitRemoteAllocation TestKitAllocation,
      TemporalDateTime appointment_datetime,
      String customerID,
      String bookingInstanceTestKitAllocationId}) {
    return BookingInstance(
        id: id ?? this.id,
        TestKitAllocation: TestKitAllocation ?? this.TestKitAllocation,
        appointment_datetime: appointment_datetime ?? this.appointment_datetime,
        customerID: customerID ?? this.customerID,
        bookingInstanceTestKitAllocationId:
            bookingInstanceTestKitAllocationId ??
                this.bookingInstanceTestKitAllocationId);
  }

  BookingInstance.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        TestKitAllocation = json['TestKitAllocation'] != null
            ? TestKitRemoteAllocation.fromJson(
                new Map<String, dynamic>.from(json['TestKitAllocation']))
            : null,
        appointment_datetime = json['appointment_datetime'] != null
            ? TemporalDateTime.fromString(json['appointment_datetime'])
            : null,
        customerID = json['customerID'],
        bookingInstanceTestKitAllocationId =
            json['bookingInstanceTestKitAllocationId'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'TestKitAllocation': TestKitAllocation?.toJson(),
        'appointment_datetime': appointment_datetime?.format(),
        'customerID': customerID,
        'bookingInstanceTestKitAllocationId': bookingInstanceTestKitAllocationId
      };

  static final QueryField ID = QueryField(fieldName: "bookingInstance.id");
  static final QueryField TESTKITALLOCATION = QueryField(
      fieldName: "TestKitAllocation",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (TestKitRemoteAllocation).toString()));
  static final QueryField APPOINTMENT_DATETIME =
      QueryField(fieldName: "appointment_datetime");
  static final QueryField CUSTOMERID = QueryField(fieldName: "customerID");
  static final QueryField BOOKINGINSTANCETESTKITALLOCATIONID =
      QueryField(fieldName: "bookingInstanceTestKitAllocationId");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "BookingInstance";
    modelSchemaDefinition.pluralName = "BookingInstances";

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
        key: BookingInstance.TESTKITALLOCATION,
        isRequired: false,
        ofModelName: (TestKitRemoteAllocation).toString(),
        associatedKey: TestKitRemoteAllocation.ID));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BookingInstance.APPOINTMENT_DATETIME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BookingInstance.CUSTOMERID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: BookingInstance.BOOKINGINSTANCETESTKITALLOCATIONID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _BookingInstanceModelType extends ModelType<BookingInstance> {
  const _BookingInstanceModelType();

  @override
  BookingInstance fromJson(Map<String, dynamic> jsonData) {
    return BookingInstance.fromJson(jsonData);
  }
}
