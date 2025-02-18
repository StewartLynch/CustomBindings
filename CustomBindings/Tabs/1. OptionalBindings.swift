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
    @State private var name: String?
    @State private var age: Int?
    @State private var selectedDate: Date?
    private var dateBinding: Binding<Date> {
        Binding(
            get: { selectedDate ?? Date.now },
            set: { selectedDate = $0 }
        )
    }
    var body: some View {
        NavigationStack {
            Text("TextFields can only be bound to non-optional strings or optional other Types when using the format option.  If the bound values are optional, a custom binding must be used.")
          			.font(.subheadline)
                .foregroundStyle(.secondary)
                .padding()
            Form {
                Section("Optional String TextField") {
                    TextField(
                        "Enter Name",
                        text: Binding(
                            get: { name ?? "" },
                            set: { name = $0.isEmpty ? nil : $0  }
//                            set: { entry in
//                                if entry.isEmpty {
//                                    name = nil
//                                } else {
//                                    name = entry
//                                }
//                            }
                        )
                    )
                    Text(name ?? "nil")
                        .valueDisplay()
                }
                Section("Optional Numeric TextField") {
                    TextField( "Enter Age", value: $age, format: .number)
                    if let age {
                        Text("\(age)")
                            .valueDisplay()
                    } else {
                        Text("nil")
                            .valueDisplay()
                    }
                }
                Section("Optional Dates") {
                    if selectedDate != nil {
                        HStack {
                            DatePicker("Select Date", selection: dateBinding,
                        displayedComponents: .date)
                            Button {
                                selectedDate = nil
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                            }
                        }
                    } else {
                        LabeledContent("Select Date") {
                            Button("Add Date") {
                                selectedDate = Date.now
                            }
                        }
                    }
                }
            }
                
            .navigationTitle("Optional Bindings")
        }
    }
}

#Preview {
    OptionalBindings()
}
