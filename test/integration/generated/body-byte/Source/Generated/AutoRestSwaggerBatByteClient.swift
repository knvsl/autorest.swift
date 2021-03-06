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

public final class AutoRestSwaggerBatByteClient: PipelineClient {
    /// API version of the  to invoke. Defaults to the latest.
    public enum ApiVersion: RequestStringConvertible {
        /// Custom value for unrecognized enum values
        case custom(String)
        /// API version ""
        case v

        /// The most recent API version of the
        public static var latest: ApiVersion {
            return .v
        }

        public var requestString: String {
            switch self {
            case let .custom(val):
                return val
            case .v:
                return ""
            }
        }

        public init(_ val: String) {
            switch val.lowercased() {
            case "":
                self = .v
            default:
                self = .custom(val)
            }
        }
    }

    /// Options provided to configure this `AutoRestSwaggerBatByteClient`.
    public let options: AutoRestSwaggerBatByteClientOptions

    // MARK: Initializers

    /// Create a AutoRestSwaggerBatByteClient client.
    /// - Parameters:
    ///   - endpoint: Base URL for the AutoRestSwaggerBatByteClient.
    ///   - authPolicy: An `Authenticating` policy to use for authenticating client requests.
    ///   - options: Options used to configure the client.
    public init(
        url: URL? = nil,
        authPolicy: Authenticating,
        withOptions options: AutoRestSwaggerBatByteClientOptions
    ) throws {
        let defaultHost = URL(string: "http://localhost:3000")
        guard let endpoint = url ?? defaultHost else {
            fatalError("Unable to determine base URL. ")
        }
        self.options = options
        super.init(
            endpoint: endpoint,
            transport: options.transportOptions.transport ?? URLSessionTransport(),
            policies: [
                UserAgentPolicy(for: AutoRestSwaggerBatByteClient.self, telemetryOptions: options.telemetryOptions),
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

    public lazy var byte = Byte(client: self)

    // MARK: Public Client Methods
}
