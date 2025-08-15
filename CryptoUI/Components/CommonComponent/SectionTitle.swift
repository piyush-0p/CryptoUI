//
//  SectionTitle.swift
//  CryptoUI
//
//  Created by Piyush on 15/08/25.
//

import SwiftUI

struct SectionTitle: View {
    let title: String
    let activity: String

    init(title: String, activity: String = "") {
        self.title = title
        self.activity = activity
    }

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            if !activity.isEmpty {
                Text(activity)
            }
        }
    }
}
