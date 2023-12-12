// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol SW_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SW.SchemaMetadata {}

protocol SW_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SW.SchemaMetadata {}

protocol SW_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SW.SchemaMetadata {}

protocol SW_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SW.SchemaMetadata {}

extension SW {
  typealias ID = String

  typealias SelectionSet = SW_SelectionSet

  typealias InlineFragment = SW_InlineFragment

  typealias MutableSelectionSet = SW_MutableSelectionSet

  typealias MutableInlineFragment = SW_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Root": return SW.Objects.Root
      case "FilmsConnection": return SW.Objects.FilmsConnection
      case "Film": return SW.Objects.Film
      case "Species": return SW.Objects.Species
      case "Planet": return SW.Objects.Planet
      case "Person": return SW.Objects.Person
      case "Starship": return SW.Objects.Starship
      case "Vehicle": return SW.Objects.Vehicle
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}