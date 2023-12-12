// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public extension SW {
  class AllFilmTitlesQuery: GraphQLQuery {
    public static let operationName: String = "AllFilmTitles"
    public static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllFilmTitles { allFilms { __typename films { __typename title } } }"#
      ))

    public init() {}

    public struct Data: SW.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SW.Objects.Root }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("allFilms", AllFilms?.self),
      ] }

      public var allFilms: AllFilms? { __data["allFilms"] }

      /// AllFilms
      ///
      /// Parent Type: `FilmsConnection`
      public struct AllFilms: SW.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SW.Objects.FilmsConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("films", [Film?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        public var films: [Film?]? { __data["films"] }

        /// AllFilms.Film
        ///
        /// Parent Type: `Film`
        public struct Film: SW.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SW.Objects.Film }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("title", String?.self),
          ] }

          /// The title of this film.
          public var title: String? { __data["title"] }
        }
      }
    }
  }

}