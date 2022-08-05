//
//  ContentView.swift
//  emotionalTesting
//
//  Created by Juan Harrington on 26/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("mountain")
                .resizable()
                .ignoresSafeArea()

//            Color(red: 0.279, green: 0.241, blue: 0.68).opacity(0.5)
              Color(red: 0.279, green: 0.241, blue: 0.68).opacity(0.5)

                .ignoresSafeArea()

            VStack {
                VStack(alignment: .leading) {
                    Text("Title")
                        .fontWeight(.semibold)
                        .font(Font.custom("OpenSans-SemiboldItalic.ttf", size: 20))
                        //.font(.title)
                        .foregroundColor(Color.white)
                        .padding(.leading, 20)
                    
                    
                    Text("Thank you, just being here is to consider that emotions are important, (and they are!). Emotions are a universe that you can know, manage and enjoy to improve the relationship you have with yourself and those around you.")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .font(.system(size: 16))

                    ScrollView {
                        VStack {
                           // ForEach(viewModel.viewContent.content, id: \.self) { text in
    
                            Text("Thank you, just being here is to consider that emotions are important, (and they are!). Emotions are a universe that you can know, manage and enjoy to improve the relationship you have with yourself and those around you.")
                                
                                .foregroundColor(.white)

                                .padding(.vertical)
                                .padding(.leading)
                                .background(Color(red: 0.242, green: 0.536, blue: 0.802)).opacity(0.6)
                                //.cornerRadius(20)
                                .padding(.trailing)
                                .font(.system(size: 14))
                                .modifier(EmotionallContentCornerStyle())
                            

                                
                               
                            Text("Thank you, just being here is to consider that emotions are important, (and they are!). Emotions are a universe that you can know, manage and enjoy to improve the relationship you have with yourself and those around you.")
                                
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.leading)
                                .opacity(0.8)
                                .background(Color.blue.opacity(0.5))
                                .padding(.trailing)
                                .font(.system(size: 14))
                                .modifier(EmotionallContentCornerStyle())


                            Text("Thank you, just being here is to consider that emotions are important, (and they are!). Emotions are a universe that you can know, manage and enjoy to improve the relationship you have with yourself and those around you.")
                                
                                .foregroundColor(.white)
                                .padding(.vertical)
                                .padding(.leading)
                                .opacity(0.8)
                                .background(Color.blue.opacity(0.5))
                                .padding(.trailing)
                                .font(.system(size: 14))
                                .modifier(EmotionallContentCornerStyle())


                            //}
                        }
                    }
//                    .task {
//                        //await viewModel.viewAppeared()
//                    }
                }
                Button("Next", action: {
                })
                .multilineTextAlignment(.leading)

                .padding(.horizontal, 54)
                .padding(.top, 20)
                .padding(.bottom, 20)
                .background(Color.red)
                .cornerRadius(20)

                //.buttonStyle(MainButtonStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
