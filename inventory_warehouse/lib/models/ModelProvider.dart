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
import 'BookingInstance.dart';
import 'Ingredient1.dart';
import 'Ingredient2.dart';
import 'Ingredient3.dart';
import 'Ingredient4.dart';
import 'PurchaseInstance.dart';
import 'TestKit.dart';
import 'TestKitRemoteAllocation.dart';

export 'BookingInstance.dart';
export 'Ingredient1.dart';
export 'Ingredient2.dart';
export 'Ingredient3.dart';
export 'Ingredient4.dart';
export 'PurchaseInstance.dart';
export 'TestKit.dart';
export 'TestKitRemoteAllocation.dart';
export 'TestTypes.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "70dea02913c24b8fd0c9c62760633a06";
  @override
  List<ModelSchema> modelSchemas = [
    BookingInstance.schema,
    Ingredient1.schema,
    Ingredient2.schema,
    Ingredient3.schema,
    Ingredient4.schema,
    PurchaseInstance.schema,
    TestKit.schema,
    TestKitRemoteAllocation.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "BookingInstance":
        {
          return BookingInstance.classType;
        }
        break;
      case "Ingredient1":
        {
          return Ingredient1.classType;
        }
        break;
      case "Ingredient2":
        {
          return Ingredient2.classType;
        }
        break;
      case "Ingredient3":
        {
          return Ingredient3.classType;
        }
        break;
      case "Ingredient4":
        {
          return Ingredient4.classType;
        }
        break;
      case "PurchaseInstance":
        {
          return PurchaseInstance.classType;
        }
        break;
      case "TestKit":
        {
          return TestKit.classType;
        }
        break;
      case "TestKitRemoteAllocation":
        {
          return TestKitRemoteAllocation.classType;
        }
        break;
      default:
        {
          throw Exception(
              "Failed to find model in model provider for model name: " +
                  modelName);
        }
    }
  }
}
