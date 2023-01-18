//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ahmet Ali ÇETİN on 17.01.2023.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: PROPERTIES
    var labelText: String
    var labelImage: String
    
    //MARK: BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}
//MARK: PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
    }
}
