//
//----------------------------------------------
// Original project: CustomBindings
// by  Stewart Lynch on 2025-02-17
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.

import SwiftUI

struct OptionalBindings: View {
    @State private var name: String = ""
    @State private var age: Int = 0
    @State private var selectedDate: Date = Date.now
    var body: some View {
        NavigationStack {
            Text("TextFields can only be bound to non-optional strings or optional other Types when using the format option.  If the bound values are optional, a custom binding must be used.")
          			.font(.subheadline)
                .foregroundStyle(.secondary)
                .padding()
            Form {
                Section("Optional String TextField") {
                    TextField( "Enter Name", text: $name)
                    Text(name)
                        .valueDisplay()
                }
                Section("Optional Numeric TextField") {
                    TextField( "Enter Age", value: $age, format: .number)
                    Text("\(age)")
                        .valueDisplay()
                }
                Section("Optional Dates") {
                    DatePicker("Select Date", selection: $selectedDate,
                displayedComponents: .date)
                }
            }
                
            .navigationTitle("Optional Bindings")
        }
    }
}

#Preview {
    OptionalBindings()
}
