//
//----------------------------------------------
// Original project: CustomBindings
// by  Stewart Lynch on 2025-03-24
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct UsingBindingExtensionView: View {
    @State private var name: String?
    @State private var date: Date?
    
    var body: some View {
        VStack {
            TextField("Name", text: .init($name, defaultValue: ""))
            if date != nil {
                HStack {
                    DatePicker("Select Date", selection: .init($date, defaultValue: .now),
                displayedComponents: .date)
                    Button {
                        date = nil
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
            } else {
                LabeledContent("Select Date") {
                    Button("Add Date") {
                        date = Date.now
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    UsingBindingExtensionView()
}
