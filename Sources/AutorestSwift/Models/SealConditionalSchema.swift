//
//  SealedConditionalSchema.swift
//  
//
//  Created by Sam Cheung on 2020-07-13.
//

import Foundation

/// a schema that represents a value dependent on another (not overridable)
public struct SealedConditionalSchema: Codable {
    /// the primitive type for the conditional
    public let conditionalType: PrimitiveSchema

    /// the possible conditional values
    public let conditions: [ConditionalValue]

    /// the source value that drives the target value
    public let sourceValue: [Value]

    // TODO: Apply allOf
    // public let allOf: [ValueSchema]
}