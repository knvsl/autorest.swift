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

/// The product documentation.
public struct Product: Codable {
    // MARK: Properties

    /// Non required array of unique items from 0 to 6 elements.
    public let displayNames: [String]?
    /// Non required int betwen 0 and 100 exclusive.
    public let capacity: Int32?
    /// Image URL representing the product.
    public let image: String?
    /// The product documentation.
    public let child: ChildProduct
    /// The product documentation.
    public let constChild: ConstantProduct

    // MARK: Constants

    /// Constant int
    public let constInt = 0
    /// Constant string
    public let constString = "constant"
    /// Constant string as Enum
    public let constStringAsEnum = "constant_string_as_enum"

    // MARK: Initializers

    /// Initialize a `Product` structure.
    /// - Parameters:
    ///   - displayNames: Non required array of unique items from 0 to 6 elements.
    ///   - capacity: Non required int betwen 0 and 100 exclusive.
    ///   - image: Image URL representing the product.
    ///   - child: The product documentation.
    ///   - constChild: The product documentation.
    public init(
        displayNames: [String]? = nil, capacity: Int32? = nil, image: String? = nil, child: ChildProduct,
        constChild: ConstantProduct
    ) {
        self.displayNames = displayNames
        self.capacity = capacity
        self.image = image
        self.child = child
        self.constChild = constChild
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case displayNames = "display_names"
        case capacity = "capacity"
        case image = "image"
        case child = "child"
        case constChild = "constChild"
        case constInt = "constInt"
        case constString = "constString"
        case constStringAsEnum = "constStringAsEnum"
    }

    /// Initialize a `Product` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.displayNames = try? container.decode([String].self, forKey: .displayNames)
        self.capacity = try? container.decode(Int32.self, forKey: .capacity)
        self.image = try? container.decode(String.self, forKey: .image)
        self.child = try container.decode(ChildProduct.self, forKey: .child)
        self.constChild = try container.decode(ConstantProduct.self, forKey: .constChild)
    }

    /// Encode a `Product` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if displayNames != nil { try? container.encode(displayNames, forKey: .displayNames) }
        if capacity != nil { try? container.encode(capacity, forKey: .capacity) }
        if image != nil { try? container.encode(image, forKey: .image) }
        try container.encode(child, forKey: .child)
        try container.encode(constChild, forKey: .constChild)
        try container.encode(constInt, forKey: .constInt)
        try container.encode(constString, forKey: .constString)
        try container.encode(constStringAsEnum, forKey: .constStringAsEnum)
    }
}
