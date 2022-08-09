//
//  FromBackgroundView.swift
//  emotionalTesting
//
//  Created by Juan Harrington on 6/08/22.
//
import SwiftUI
struct ReusableView: View {
    
    var backgroundColor: [Double] = [0, 0, 0]
    var image: String = ""
    var title: String = ""
    var description: String = ""
    
    var body: some View{
        
        ZStack{
            Color(red: backgroundColor[0] / 255, green: backgroundColor[1] / 255, blue: backgroundColor[2] / 255)
            VStack(alignment: .leading){
                HStack{
                    Image(image)
                        .padding(10)
                        .padding(.leading, 10)
                    Text(title)
                        .tracking(5)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                        .padding(.leading, 5)
                        .font(Font.custom("FiraSans-BookItalic.otf", size: 18))
                        .foregroundColor(Color.white)
                    
                }
                .padding(.top, 20)
                
                Text(description)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.top, 10)
                    .font(Font.custom("FiraSans-BookItalic.otf", size: 14))
                    .foregroundColor(Color.white)
                
                Button(action: {
                }){
                    Text("Go for It")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(5)
                        .padding(.trailing, 80)
                        .overlay(
                            RoundedRectangle(cornerRadius: 0)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }
                .modifier(EmotionallContentCornerStyleForTheThridScreenButtons())
                .padding(.top, 20)
                .padding(.leading, 30)
                Spacer()
            }
            .padding(.top, 20)
        }
        .modifier(EmotionallContentImageStyle())
    }
}

struct MainView: View{
    @State var sizeStateScreenTwo: CGFloat = 1.30
    @State var sizeStateScreenThree: CGFloat = 0.80
    var body: some View{
        
        GeometryReader { geometry in
            ZStack(alignment: .bottom){
                ReusableView(backgroundColor: [29, 204, 194],
                             image: "Speak (1)",
                             title: "REFLECTION",
                             description: "Write about 5 people that have made your life better and why")
                    
                    .onTapGesture(count: 1, perform: {
                        withAnimation{
                            sizeStateScreenTwo = 0.90
                            sizeStateScreenThree = 0.50
                        }
                    })
                
                
                
                ReusableView(backgroundColor: [50, 156, 253],
                             image: "Feelings (1)",
                             title: "DIVE",
                             description: "In a few days, go back to see the pictures you took. What are the things that you really love? Check if they are really in the pictures. What your camera has captured is what you love? Write it down")
                    .frame(height: geometry.size.width * sizeStateScreenTwo)
                    
                    .onTapGesture(count: 1, perform: {
                        withAnimation{
                            sizeStateScreenTwo = 1.40
                            sizeStateScreenThree = 0.50
                        }
                    })
                
                
                ReusableView(backgroundColor: [199, 70, 116],
                             image: "Think",
                             title: "PRACTICE",
                             description: "Imagine yourself in 1 year. Think where you are and how makes you feel that your dreams came true. Imagine you accomplished all you wanted. Describe all the details you imagine, who are you with? What surrounds you?")
                    .frame(height: geometry.size.width * sizeStateScreenThree)
                    
                    .onTapGesture(count: 1, perform: {
                        withAnimation{
                            sizeStateScreenTwo = 1.40
                            sizeStateScreenThree = 1
                        }
                    })
            }
        }
        .ignoresSafeArea()
    }
}


struct FormBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 11 Pro")
            MainView()
                .previewDevice("iPhone 8")
        }
    }
}
