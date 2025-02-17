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

struct StartTab: View {
    var body: some View {
        TabView {
            Tab("Optionals", systemImage: "1.circle") {
                OptionalBindings()
            }
            Tab("NonOptionals", systemImage: "2.circle") {
                NonOptionalExample()
            }
            Tab("ViewModels", systemImage: "3.circle") {
                ViewModelExample()
            }
        }
    }
}

#Preview {
    StartTab()
}
