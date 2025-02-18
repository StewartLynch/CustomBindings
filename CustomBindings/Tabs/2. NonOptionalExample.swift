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

struct NonOptionalExample: View {
    @State private var sliderValue: Int = 5
    private var doubleBinding: Binding<Double> {
        Binding(
            get: { Double(sliderValue) },
            set: { sliderValue = Int($0) }
        )
    }
    var body: some View {
        NavigationStack {
            Text("There other cases where creating your own custom bindings can be really useful, particularly if your underlying models use different Types from what the controls you are using require, like we saw with optionals for a TextField to a String or a DatePicker.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding()
            Form {
                Section("Binding a Slider to an Int") {
                    Slider(value: doubleBinding, in: 1...100, step: 1)
                    Text("\(Int(sliderValue))")
                        .font(.system(size: 100))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                }
            }
            .navigationTitle("Non Optional Example")
        }
    }
}

#Preview {
    NonOptionalExample()
}
