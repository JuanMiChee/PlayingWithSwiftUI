//
//  FromBackgroundView.swift
//  emotionalTesting
//
//  Created by Juan Harrington on 6/08/22.
//
import SwiftUI
struct ReusableView: View {
    
    let dataSource = DataSource()
    var backgroundColor: Color
    var image: String = ""
    var title: String = ""
    var description: String = ""
    
    var body: some View{
        
        ZStack{
            backgroundColor
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
                        .font(Font.custom(dataSource.firaSansFont, size: 18))
                        .foregroundColor(Color.white)
                    
                }
                .padding(.top, 20)
                
                Text(description)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                    .padding(.top, 10)
                    .font(Font.custom(dataSource.firaSansFont, size: 14))
                    .foregroundColor(Color.white)
                
                Button(action: {
                }){
                    Text("Go for It!")
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
    var dataSource = DataSource()
    var body: some View{
        
        GeometryReader { geometry in
            ZStack(alignment: .bottom){
                ReusableView(backgroundColor: Color(red: 29 / 255, green: 204 / 255, blue: 194 / 255),
                             image: dataSource.image,
                             title:  dataSource.title,
                             description:  dataSource.description)
                    .onTapGesture(count: 1, perform: {
                        withAnimation{
                            sizeStateScreenTwo = 0.90
                            sizeStateScreenThree = 0.50
                        }
                    })
                ReusableView(backgroundColor: Color(red: 50 / 255, green: 156 / 255, blue: 253 / 255) ,
                             image: dataSource.imageTwo,
                             title: dataSource.titleTwo,
                             description: DataSource().descriptionTwo)
                    .frame(height: geometry.size.width * sizeStateScreenTwo)
                    .onTapGesture(count: 1, perform: {
                        withAnimation{
                            sizeStateScreenTwo = 1.40
                            sizeStateScreenThree = 0.50
                        }
                    })
                //[199, 70, 116],
                ReusableView(backgroundColor: Color(red: 199 / 255, green: 70 / 255, blue: 116 / 255),
                             image: dataSource.imageThree,
                             title: dataSource.titleThree,
                             description: dataSource.descriptionThree)
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
