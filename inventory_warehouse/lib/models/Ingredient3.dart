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

/** This is an auto generated class representing the Ingredient3 type in your schema. */
@immutable
class Ingredient3 extends Model {
  static const classType = const _Ingredient3ModelType();
  final String id;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  const Ingredient3._internal({@required this.id});

  factory Ingredient3({String id}) {
    return Ingredient3._internal(id: id == null ? UUID.getUUID() : id);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ingredient3 && id == other.id;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Ingredient3 {");
    buffer.write("id=" + "$id");
    buffer.write("}");

    return buffer.toString();
  }

  Ingredient3 copyWith({String id}) {
    return Ingredient3(id: id ?? this.id);
  }

  Ingredient3.fromJson(Map<String, dynamic> json) : id = json['id'];

  Map<String, dynamic> toJson() => {'id': id};

  static final QueryField ID = QueryField(fieldName: "ingredient3.id");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Ingredient3";
    modelSchemaDefinition.pluralName = "Ingredient3s";

    modelSchemaDefinition.authRules = [
      AuthRule(authStrategy: AuthStrategy.PUBLIC, operations: [
        ModelOperation.CREATE,
        ModelOperation.UPDATE,
        ModelOperation.DELETE,
        ModelOperation.READ
      ])
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());
  });
}

class _Ingredient3ModelType extends ModelType<Ingredient3> {
  const _Ingredient3ModelType();

  @override
  Ingredient3 fromJson(Map<String, dynamic> jsonData) {
    return Ingredient3.fromJson(jsonData);
  }
}
