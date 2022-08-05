/*
 ThirdScreen.swift
 -EmotionalTesting-
 
 -Created by Juan Harrington on 29/07/22.
 */

/*
 [[BackgroundColors:]]
 -Screen1: 29, 204, 194
 -Screen2: 50, 156, 253
 -Screen3: 199, 70, 116
 */

import SwiftUI
import Foundation


struct ContentViewThree: View {
    
    @State private var stateScreenOne: CGFloat = 1.30
    @State private var stateScreenTwo: CGFloat = 0.80
    @State private var trueOrFalseVerification: Bool = false

    
    var body: some View{
        GeometryReader { geometry in
            
            ZStack(alignment: .bottom){
                ZStack{
                    Color(red: 29 / 255, green: 204 / 255, blue: 194 / 255)
                    VStack(alignment: .leading){
                        HStack{
                            Image("Speak (1)")
                                .padding(10)
                                .padding(.leading, 10)
                            Text("REFLECTION")
                                .tracking(5)
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading, 5)
                                .font(Font.custom("FiraSans-BookItalic.otf", size: 18))
                                .foregroundColor(Color.white)
                            
                        }
                        .padding(.top, 20)
                        
                        
                        Text("Write about 5 people that have made your life better and why")
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                            .padding(.top, 10)
                            .font(Font.custom("FiraSans-BookItalic.otf", size: 14))
                            .foregroundColor(Color.white)
                        
                        Button(action: {
                            print("Button tapped!")
                        }){
                            Text("Go for It")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(5)
                                .padding(.trailing, geometry.size.width * 0.20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color.white, lineWidth: 2)
                            )
                        }
                        .modifier(EmotionallContentCornerStyleForTheThridScreenButtons())
                        .padding(.top, 20)
                        .padding(.leading, geometry.size.width * 0.10)
                        Spacer()
                    }
                    
                    .padding(.top, 20)
                    
                }
                //UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU
                .modifier(EmotionallContentImageStyle())
                .onTapGesture(count: 1, perform: {
                    withAnimation{
                    stateScreenOne = 0.90
                    stateScreenTwo = 0.50
                    }
                })
                
                
                //Pantallas dos y treh aca abajo
                
                ZStack{
                    Color(red: 50 / 255, green: 156 / 255, blue: 253 / 255)
                    
                    VStack(alignment: .leading){
                        HStack{
                            Image("Feelings (1)")
                                .padding(10)
                                .padding(.leading, 10)
                            Text("DRIVE")
                                .tracking(5)
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading, 5)
                                .font(Font.custom("FiraSans-BookItalic.otf", size: 18))
                                .foregroundColor(Color.white)
                            
                        }
                        .padding(.top, 20)
                        
                        
                        Text("In a few days, go back to see the pictures you took. What are the things that you really love? Check if they are really in the pictures. What your camera has captured is what you love? Write it down")
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                            .padding(.top, 10)
                            .font(Font.custom("FiraSans-BookItalic.otf", size: 14))
                            .foregroundColor(Color.white)
                        
                        Button(action: {
                            print("Button tapped!")
                        }){
                            Text("Go for It")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(5)
                                .padding(.trailing, geometry.size.width * 0.20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color.white, lineWidth: 2)
                            )
                        }
                        .modifier(EmotionallContentCornerStyleForTheThridScreenButtons())
                        .padding(.top, 20)
                        .padding(.leading, geometry.size.width * 0.10)
                        Spacer()
                    }
                }
                
                .frame(height: geometry.size.width * stateScreenOne)
                //.frame(height: trueOrFalseVerification ? geometry.size.width * 0.10 : geometry.size.width * 0.30)
                .modifier(EmotionallContentImageStyle())
                
                .onTapGesture(count: 1, perform: {
                    withAnimation{

                    stateScreenOne = 1.40
                    stateScreenTwo = 0.50
                    
                        //trueOrFalseVerification.toggle()
                    }
                    
                })
               
                
                
                ZStack{
                    Color(red: 199 / 255, green: 70 / 255, blue: 116 / 255)
                        //.ignoresSafeArea()
                    VStack(alignment: .leading){
                        HStack{
                            Image("Think")
                                .padding(10)
                                .padding(.leading, 10)
                            Text("PRACTICE")
                                .tracking(5)
                                .fontWeight(.bold)
                                .padding(.top, 10)
                                .padding(.leading, 5)
                                .font(Font.custom("FiraSans-BookItalic.otf", size: 18))
                                .foregroundColor(Color.white)
                            
                        }
                        .padding(.top, 20)
                        
                        
                        Text("Imagine yourself in 1 year. Think where you are and how makes you feel that your dreams came true. Imagine you accomplished all you wanted. Describe all the details you imagine, who are you with? What surrounds you?")
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                            .padding(.top, 4)
                            .font(Font.custom("FiraSans-BookItalic.otf", size: 13))
                            .foregroundColor(Color.white)
                        
                        Button(action: {
                            print("Button tapped!")
                        }){
                            Text("Go for It")
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .padding(5)
                                .padding(.trailing, geometry.size.width * 0.20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 0)
                                        .stroke(Color.white, lineWidth: 2)
                            )
                        }
                        .modifier(EmotionallContentCornerStyleForTheThridScreenButtons())
                        .padding(.top, 20)
                        .padding(.leading, geometry.size.width * 0.10)
                        Spacer()
                    }
                    
                }
                
                
                .frame(height: geometry.size.width * stateScreenTwo)
                .modifier(EmotionallContentImageStyle())
                .onTapGesture(count: 1, perform: {
                    withAnimation{
                    stateScreenOne = 1.40
                    stateScreenTwo = 1
                    }
                })
            }
        }.ignoresSafeArea()
    }
}


struct ContentView_PreviewsThree: PreviewProvider {
    static var previews: some View {
        Group{
            ContentViewThree()
            ContentViewThree().previewDevice("iPhone 11 Pro Max")

        }
    }
}
