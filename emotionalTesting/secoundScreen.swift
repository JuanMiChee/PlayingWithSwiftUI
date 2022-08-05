//
//  secoundScreen.swift
//  emotionalTesting
//
//  Created by Juan Harrington on 27/07/22.
//
import SwiftUI

struct ContentViewTwo: View {
    var body: some View {
    
        ZStack {
            Image("mountain")
                .resizable()
                .ignoresSafeArea()

            Color(.black).opacity(0.9)
                .ignoresSafeArea()
            
            
            

            VStack {
                Spacer()
                VStack {
                    Text("Congratulations!")
//                        .fontWeight(.semibold)
//                        //.frame(width: .infinity, alignment: .leading)
//                        //.font(Font.custom("OpenSans-SemiboldItalic.ttf", size: 20))
//                        .font(.title)
//
//                        //.font(.title)
//                        .foregroundColor(Color.black)
//                        .padding(.top, 20)
//                        .padding(.leading, -50)
//
//
//
//                    Text("Thank you, just being here is to consider that emotions are important, (and they are!). Emotions are a universe that you can know, manage and enjoy to improve the relationship you have with yourself and those around you.")
//                        .fontWeight(.medium)
//                        .foregroundColor(.black)
//                        .multilineTextAlignment(.leading)
//                        .padding(30)
//                        .font(.system(size: 16))
//
//                    Button("Next", action: {
//                    })
//                    .multilineTextAlignment(.leading)
//
//                    .padding(.horizontal, 54)
//                    .padding(.top, 20)
//                    .padding(.bottom, 20)
//                    .background(Color.red)
//                    .cornerRadius(20)
                    
                }.frame(width: .infinity, height: 300, alignment: .leading)
                .background(Color.white)
                .modifier(EmotionallContentImageStyle())
                
                

                //.buttonStyle(MainButtonStyle())
            }
            
            

        }
    }
}

struct ContentView_PreviewsTwo: PreviewProvider {
    static var previews: some View {
        ContentViewTwo()
    }
}

//ontapgesture
