// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

public struct ArrayWrapper: Codable {
    // MARK: Properties

    public let value: [String]

    // MARK: Initializers

    /// Initialize a `ArrayWrapper` structure.
    /// - Parameters:
    ///   - value:
    public init(
        value: [String]
    ) {
        self.value = value
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case value
    }

    /// Initialize a `ArrayWrapper` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.value = try container.decode([String].self, forKey: .value)
    }

    /// Encode a `ArrayWrapper` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(value, forKey: .value)
    }
}
