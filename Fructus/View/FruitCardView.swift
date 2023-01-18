//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ahmet Ali ÇETİN on 15.01.2023.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    @State private var isAnimating: Bool = false
    var fruitModel: Fruit
    
    //MARK: BODY
    
    //MARK: PREVIEW
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                //: FRUIT IMAGE
                Image(fruitModel.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.5), radius: 8, x: 6, y: 8 )
                    .scaleEffect(isAnimating ? 1.0 : 0.7)
                
                
                //: FRUIT TITLE
                Text(fruitModel.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.45), radius: 2, x: 2, y: 2)
                
                //: FRUIT HEADLINE
                Text(fruitModel.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                
                //: BUTTON -> START
                StartButtonView()
            }//: VSTACK
        }//: ZSTACK
        
        
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruitModel.gradientColors ), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitModel: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
