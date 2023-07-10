// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum BookView {
    /// BookView.strings
    ///   webhook-test
    /// 
    ///   Created by Jason Rich Darmawan Onggo Putra on 11/07/23.
    internal static let bookName = L10n.tr("BookView", "bookName", fallback: "Book Name")
  }
  internal enum ContentView {
    /// Those %d bananas belong to %@.
    internal static func bananasOwner(_ p1: Int, _ p2: Any) -> String {
      return L10n.tr("ContentView", "bananasOwner", p1, String(describing: p2), fallback: "Those %d bananas belong to %@.")
    }
    /// ContentView.strings
    ///   webhook-test
    /// 
    ///   Created by Jason Rich Darmawan Onggo Putra on 11/07/23.
    internal static let helloWorld = L10n.tr("ContentView", "helloWorld", fallback: "Hello, world!")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
