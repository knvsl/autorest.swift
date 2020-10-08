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
// swiftlint:disable file_length
// swiftlint:disable cyclomatic_complexity
// swiftlint:disable function_body_length
// swiftlint:disable type_body_length

public final class AutoRestUrlTestClient: PipelineClient {
    /// API version of the  to invoke. Defaults to the latest.
    public enum ApiVersion: String {
        /// API version ""
        case v = ""

        /// The most recent API version of the
        public static var latest: ApiVersion {
            return .v
        }
    }

    /// Options provided to configure this `AutoRestUrlTestClient`.
    public let options: AutoRestUrlTestClientOptions

    // MARK: Initializers

    /// Create a AutoRestUrlTestClient client.
    /// - Parameters:
    ///   - baseUrl: Base URL for the AutoRestUrlTestClient.
    ///   - authPolicy: An `Authenticating` policy to use for authenticating client requests.
    ///   - options: Options used to configure the client.
    public init(
        globalStringPath: String,
        baseUrl: URL,
        authPolicy: Authenticating,
        withOptions options: AutoRestUrlTestClientOptions
    ) throws {
        self.globalStringPath = globalStringPath
        self.options = options
        super.init(
            baseUrl: baseUrl,
            transport: URLSessionTransport(),
            policies: [
                UserAgentPolicy(for: AutoRestUrlTestClient.self, telemetryOptions: options.telemetryOptions),
                RequestIdPolicy(),
                AddDatePolicy(),
                authPolicy,
                ContentDecodePolicy(),
                LoggingPolicy(),
                NormalizeETagPolicy()
            ],
            logger: options.logger,
            options: options
        )
    }

    // /// A string value 'globalItemStringPath' that appears in the path
    public var globalStringPath: String
    // /// should contain value null
    public var globalStringQuery: String?

    public lazy var paths: Paths = Paths(client: self)
    public lazy var queries: Queries = Queries(client: self)
    public lazy var pathitems: PathItems = PathItems(client: self)

    // MARK: Public Client Methods
}