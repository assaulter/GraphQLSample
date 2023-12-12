//
//  APIClient.swift
//
//
//  Created by Kazuki Kubo on 2023/12/12.
//

import Apollo
import Foundation

public final class APIClient {
    
    private let apollo: ApolloClient
    
    public init(endpointURL: String) {
        // setup apollo client
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let client = URLSessionClient()
        let provider = DefaultInterceptorProvider(client: client, store: store)
        let transport = RequestChainNetworkTransport(
            interceptorProvider: provider,
            endpointURL: URL(string: endpointURL)!
        )
        apollo = ApolloClient(networkTransport: transport, store: store)
    }
    
    public func allTitles() async throws -> [String] {
        try await withCheckedThrowingContinuation({ continution in
            apollo.fetch(query: SW.AllFilmTitlesQuery()) { result in
                switch result {
                case .success(let val):
                    let titles = val.data?.allFilms?.films?.compactMap({ film in
                        film?.title
                    })
                    continution.resume(returning: titles ?? [])
                    
                case .failure(let error):
                    continution.resume(throwing: error)
                }
            }
        })
    }
}
