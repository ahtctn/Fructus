//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ahmet Ali ÇETİN on 15.01.2023.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...fruits.count - 1]) { item in
                FruitCardView(fruitModel: item)
                
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
