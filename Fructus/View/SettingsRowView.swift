//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Ahmet Ali ÇETİN on 18.01.2023.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
             HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://www.\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}
//MARK: PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Ahmet Ali ÇETİN", content: "Developer")
            SettingsRowView(name: "Website", linkLabel: "Hacking With Swift", linkDestination: "hackingwithswift")
        }
    }
}
