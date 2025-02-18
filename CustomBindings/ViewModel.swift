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

@Observable
class ViewModel {
    var firstName: String
    var middleName: String?
    var middleBinding: Binding<String> {
        Binding(
            get: { self.middleName ?? "" },
            set: { self.middleName = $0.isEmpty ? nil : $0 }
        )
    }
    var lastName: String
    
    init(firstName: String, middleName: String? = nil, lastName: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
}
