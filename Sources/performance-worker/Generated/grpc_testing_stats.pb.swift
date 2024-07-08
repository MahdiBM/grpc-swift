// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: grpc/testing/stats.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2015 gRPC authors.
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

struct Grpc_Testing_ServerStats: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// wall clock time change in seconds since last reset
  var timeElapsed: Double = 0

  /// change in user time (in seconds) used by the server since last reset
  var timeUser: Double = 0

  /// change in server time (in seconds) used by the server process and all
  /// threads since last reset
  var timeSystem: Double = 0

  /// change in total cpu time of the server (data from proc/stat)
  var totalCpuTime: UInt64 = 0

  /// change in idle time of the server (data from proc/stat)
  var idleCpuTime: UInt64 = 0

  /// Number of polls called inside completion queue
  var cqPollCount: UInt64 = 0

  /// Core library stats
  var coreStats: Grpc_Core_Stats {
    get {return _coreStats ?? Grpc_Core_Stats()}
    set {_coreStats = newValue}
  }
  /// Returns true if `coreStats` has been explicitly set.
  var hasCoreStats: Bool {return self._coreStats != nil}
  /// Clears the value of `coreStats`. Subsequent reads from it will return its default value.
  mutating func clearCoreStats() {self._coreStats = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _coreStats: Grpc_Core_Stats? = nil
}

/// Histogram params based on grpc/support/histogram.c
struct Grpc_Testing_HistogramParams: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// first bucket is [0, 1 + resolution)
  var resolution: Double = 0

  /// use enough buckets to allow this value
  var maxPossible: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Histogram data based on grpc/support/histogram.c
struct Grpc_Testing_HistogramData: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var bucket: [UInt32] = []

  var minSeen: Double = 0

  var maxSeen: Double = 0

  var sum: Double = 0

  var sumOfSquares: Double = 0

  var count: Double = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Grpc_Testing_RequestResultCount: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var statusCode: Int32 = 0

  var count: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Grpc_Testing_ClientStats: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Latency histogram. Data points are in nanoseconds.
  var latencies: Grpc_Testing_HistogramData {
    get {return _latencies ?? Grpc_Testing_HistogramData()}
    set {_latencies = newValue}
  }
  /// Returns true if `latencies` has been explicitly set.
  var hasLatencies: Bool {return self._latencies != nil}
  /// Clears the value of `latencies`. Subsequent reads from it will return its default value.
  mutating func clearLatencies() {self._latencies = nil}

  /// See ServerStats for details.
  var timeElapsed: Double = 0

  var timeUser: Double = 0

  var timeSystem: Double = 0

  /// Number of failed requests (one row per status code seen)
  var requestResults: [Grpc_Testing_RequestResultCount] = []

  /// Number of polls called inside completion queue
  var cqPollCount: UInt64 = 0

  /// Core library stats
  var coreStats: Grpc_Core_Stats {
    get {return _coreStats ?? Grpc_Core_Stats()}
    set {_coreStats = newValue}
  }
  /// Returns true if `coreStats` has been explicitly set.
  var hasCoreStats: Bool {return self._coreStats != nil}
  /// Clears the value of `coreStats`. Subsequent reads from it will return its default value.
  mutating func clearCoreStats() {self._coreStats = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _latencies: Grpc_Testing_HistogramData? = nil
  fileprivate var _coreStats: Grpc_Core_Stats? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grpc.testing"

extension Grpc_Testing_ServerStats: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ServerStats"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "time_elapsed"),
    2: .standard(proto: "time_user"),
    3: .standard(proto: "time_system"),
    4: .standard(proto: "total_cpu_time"),
    5: .standard(proto: "idle_cpu_time"),
    6: .standard(proto: "cq_poll_count"),
    7: .standard(proto: "core_stats"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.timeElapsed) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.timeUser) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.timeSystem) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.totalCpuTime) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.idleCpuTime) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self.cqPollCount) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._coreStats) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if self.timeElapsed.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeElapsed, fieldNumber: 1)
    }
    if self.timeUser.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeUser, fieldNumber: 2)
    }
    if self.timeSystem.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeSystem, fieldNumber: 3)
    }
    if self.totalCpuTime != 0 {
      try visitor.visitSingularUInt64Field(value: self.totalCpuTime, fieldNumber: 4)
    }
    if self.idleCpuTime != 0 {
      try visitor.visitSingularUInt64Field(value: self.idleCpuTime, fieldNumber: 5)
    }
    if self.cqPollCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.cqPollCount, fieldNumber: 6)
    }
    try { if let v = self._coreStats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Testing_ServerStats, rhs: Grpc_Testing_ServerStats) -> Bool {
    if lhs.timeElapsed != rhs.timeElapsed {return false}
    if lhs.timeUser != rhs.timeUser {return false}
    if lhs.timeSystem != rhs.timeSystem {return false}
    if lhs.totalCpuTime != rhs.totalCpuTime {return false}
    if lhs.idleCpuTime != rhs.idleCpuTime {return false}
    if lhs.cqPollCount != rhs.cqPollCount {return false}
    if lhs._coreStats != rhs._coreStats {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Testing_HistogramParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HistogramParams"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resolution"),
    2: .standard(proto: "max_possible"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularDoubleField(value: &self.resolution) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.maxPossible) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.resolution.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.resolution, fieldNumber: 1)
    }
    if self.maxPossible.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.maxPossible, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Testing_HistogramParams, rhs: Grpc_Testing_HistogramParams) -> Bool {
    if lhs.resolution != rhs.resolution {return false}
    if lhs.maxPossible != rhs.maxPossible {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Testing_HistogramData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".HistogramData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "bucket"),
    2: .standard(proto: "min_seen"),
    3: .standard(proto: "max_seen"),
    4: .same(proto: "sum"),
    5: .standard(proto: "sum_of_squares"),
    6: .same(proto: "count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedUInt32Field(value: &self.bucket) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.minSeen) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.maxSeen) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.sum) }()
      case 5: try { try decoder.decodeSingularDoubleField(value: &self.sumOfSquares) }()
      case 6: try { try decoder.decodeSingularDoubleField(value: &self.count) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.bucket.isEmpty {
      try visitor.visitPackedUInt32Field(value: self.bucket, fieldNumber: 1)
    }
    if self.minSeen.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.minSeen, fieldNumber: 2)
    }
    if self.maxSeen.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.maxSeen, fieldNumber: 3)
    }
    if self.sum.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.sum, fieldNumber: 4)
    }
    if self.sumOfSquares.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.sumOfSquares, fieldNumber: 5)
    }
    if self.count.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.count, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Testing_HistogramData, rhs: Grpc_Testing_HistogramData) -> Bool {
    if lhs.bucket != rhs.bucket {return false}
    if lhs.minSeen != rhs.minSeen {return false}
    if lhs.maxSeen != rhs.maxSeen {return false}
    if lhs.sum != rhs.sum {return false}
    if lhs.sumOfSquares != rhs.sumOfSquares {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Testing_RequestResultCount: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RequestResultCount"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "status_code"),
    2: .same(proto: "count"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.statusCode) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.count) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.statusCode != 0 {
      try visitor.visitSingularInt32Field(value: self.statusCode, fieldNumber: 1)
    }
    if self.count != 0 {
      try visitor.visitSingularInt64Field(value: self.count, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Testing_RequestResultCount, rhs: Grpc_Testing_RequestResultCount) -> Bool {
    if lhs.statusCode != rhs.statusCode {return false}
    if lhs.count != rhs.count {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grpc_Testing_ClientStats: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ClientStats"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "latencies"),
    2: .standard(proto: "time_elapsed"),
    3: .standard(proto: "time_user"),
    4: .standard(proto: "time_system"),
    5: .standard(proto: "request_results"),
    6: .standard(proto: "cq_poll_count"),
    7: .standard(proto: "core_stats"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._latencies) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.timeElapsed) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.timeUser) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.timeSystem) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.requestResults) }()
      case 6: try { try decoder.decodeSingularUInt64Field(value: &self.cqPollCount) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._coreStats) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._latencies {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if self.timeElapsed.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeElapsed, fieldNumber: 2)
    }
    if self.timeUser.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeUser, fieldNumber: 3)
    }
    if self.timeSystem.bitPattern != 0 {
      try visitor.visitSingularDoubleField(value: self.timeSystem, fieldNumber: 4)
    }
    if !self.requestResults.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.requestResults, fieldNumber: 5)
    }
    if self.cqPollCount != 0 {
      try visitor.visitSingularUInt64Field(value: self.cqPollCount, fieldNumber: 6)
    }
    try { if let v = self._coreStats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Grpc_Testing_ClientStats, rhs: Grpc_Testing_ClientStats) -> Bool {
    if lhs._latencies != rhs._latencies {return false}
    if lhs.timeElapsed != rhs.timeElapsed {return false}
    if lhs.timeUser != rhs.timeUser {return false}
    if lhs.timeSystem != rhs.timeSystem {return false}
    if lhs.requestResults != rhs.requestResults {return false}
    if lhs.cqPollCount != rhs.cqPollCount {return false}
    if lhs._coreStats != rhs._coreStats {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
