import SwiftUI

extension Binding {
    /// Binding to an optional value by providing a defatult value.
    ///
    /// example
    ///
    ///     struct Sample: View {
    ///         @Binding var name: String?
    ///
    ///         var body: some View {
    ///             TextField("Name",
    ///                       text: .init($name, defaultValue: ""))
    ///         }
    ///     }
    /// Creates a Binding<Value>' for an optional value with a default.
    /// - Parameters:
    ///  - optionalBinding: A binding to an optional value.
    ///  - defaultValue: The default value to use when the optional is nil'.
    ///
    init(_ optionalBinding: Binding<Value?>, defaultValue: Value) where Value: Sendable {
        self.init(
            get: {optionalBinding.wrappedValue ?? defaultValue},
            set: {newValue in
                optionalBinding.wrappedValue = newValue
            }
        )
    }
}
