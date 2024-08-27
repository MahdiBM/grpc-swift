// DO NOT EDIT.
// swift-format-ignore-file
// swiftlint:disable all
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: grpc/core/stats.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 gRPC authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Grpc_Core_Bucket: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var start: Double = 0

  var count: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Grpc_Core_Histogram: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var buckets: [Grpc_Core_Bucket] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Grpc_Core_Metric: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var value: Grpc_Core_Metric.OneOf_Value? = nil

  var count: UInt64 {
    get {
      if case .count(let v)? = value {return v}
      return 0
    }
    set {value = .count(newValue)}
  }

  var histogram: Grpc_Core_Histogram {
    get {
      if case .histogram(let v)? = value {return v}
      return Grpc_Core_Histogram()
    }
    set {value = .histogram(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Value: Equatable, Sendable {
    case count(UInt64)
    case histogram(Grpc_Core_Histogram)

  }

  init() {}
}

struct Grpc_Core_Stats: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var metrics: [Grpc_Core_Metric] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grpc.core"

extension Grpc_Core_Bucket: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Bucket"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "start"),
    2: .same(proto: "count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.start) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.count) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.start.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.start, fieldNumber: 1)
    }
    if self.count != 0 {
      try visitor.visitSingularUInt64Field(value: self.count, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Core_Bucket, rhs: Grpc_Core_Bucket) -> Bool {
    if lhs.start != rhs.start {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Core_Histogram: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Histogram"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "buckets"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.buckets) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.buckets.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.buckets, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Core_Histogram, rhs: Grpc_Core_Histogram) -> Bool {
    if lhs.buckets != rhs.buckets {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Core_Metric: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Metric"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    10: .same(proto: "count"),
    11: .same(proto: "histogram"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 10: try {
        var v: UInt64?
        try decoder.decodeSingularUInt64Field(value: &v)
        if let v = v {
          if self.value != nil {try decoder.handleConflictingOneOf()}
          self.value = .count(v)
        }
      }()
      case 11: try {
        var v: Grpc_Core_Histogram?
        var hadOneofValue = false
        if let current = self.value {
          hadOneofValue = true
          if case .histogram(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.value = .histogram(v)
        }
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    switch self.value {
    case .count?: try {
      guard case .count(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 10)
    }()
    case .histogram?: try {
      guard case .histogram(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Core_Metric, rhs: Grpc_Core_Metric) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Core_Stats: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Stats"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metrics"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.metrics) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.metrics.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.metrics, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Core_Stats, rhs: Grpc_Core_Stats) -> Bool {
    if lhs.metrics != rhs.metrics {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
