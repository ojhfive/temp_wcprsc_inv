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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/** This is an auto generated class representing the PurchaseInstance type in your schema. */
@immutable
class PurchaseInstance extends Model {
  static const classType = const _PurchaseInstanceModelType();
  final String id;
  final TemporalDateTime purchase_date;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const PurchaseInstance._internal({@required this.id, this.purchase_date});

  factory PurchaseInstance({String id, TemporalDateTime purchase_date}) {
    return PurchaseInstance._internal(
        id: id == null ? UUID.getUUID() : id, purchase_date: purchase_date);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchaseInstance &&
        id == other.id &&
        purchase_date == other.purchase_date;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("PurchaseInstance {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("purchase_date=" +
        (purchase_date != null ? purchase_date.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  PurchaseInstance copyWith({String id, TemporalDateTime purchase_date}) {
    return PurchaseInstance(
        id: id ?? this.id, purchase_date: purchase_date ?? this.purchase_date);
  }

  PurchaseInstance.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        purchase_date = json['purchase_date'] != null
            ? TemporalDateTime.fromString(json['purchase_date'])
            : null;

  Map<String, dynamic> toJson() =>
      {'id': id, 'purchase_date': purchase_date?.format()};

  static final QueryField ID = QueryField(fieldName: "purchaseInstance.id");
  static final QueryField PURCHASE_DATE =
      QueryField(fieldName: "purchase_date");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PurchaseInstance";
    modelSchemaDefinition.pluralName = "PurchaseInstances";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: PurchaseInstance.PURCHASE_DATE,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _PurchaseInstanceModelType extends ModelType<PurchaseInstance> {
  const _PurchaseInstanceModelType();

  @override
  PurchaseInstance fromJson(Map<String, dynamic> jsonData) {
    return PurchaseInstance.fromJson(jsonData);
  }
}
