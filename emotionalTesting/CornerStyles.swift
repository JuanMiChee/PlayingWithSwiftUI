//
//  CornerRadiusStyle.swift
//  Emotionall
//
//  Created by Angel Betancourt on 10/06/22.
//
import SwiftUI

struct CornerRadiusShape: Shape {

    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content.clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct EmotionallSceneStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 50, corners: [.topLeft]))
            .clipShape(CornerRadiusShape(radius: 10, corners: [.topRight]))
            .shadow(color: .gray, radius: 10)
    }
}


struct TopCornersRoundedStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 15, corners: [.topLeft, .topRight]))
    }
}

struct EmotionallHeaderImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 20, corners: [.bottomLeft]))
    }
}

struct EmotionallContentImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 40, corners: [.topRight]))
    }
}

struct EmotionallContentCornerStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 40, corners: [.topRight, .bottomRight]))
    }
}

struct EmotionallContentCornerStyleForTheThridScreenButtons: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: 40, corners: [.topRight, .bottomRight, .topLeft]))
    }
}

struct MainButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 18, weight: .light))
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: 50)
            .overlay(Image(systemName: "arrow.forward")
                .padding(), alignment: .trailing)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.blue]),
                               startPoint: .leading, endPoint: .trailing)
            ).foregroundColor(.white)
            .cornerRadius(4)
    }
}

struct SecondaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 16, weight: .medium))
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 40)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(4)
            .shadow(radius: 2)
    }
}

struct OvaledButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 14, weight: .regular))
            .padding(.horizontal, 28)
            .foregroundColor(.white)

            .overlay(
                RoundedRectangle(cornerRadius: 8)
//                    .stroke(.white, lineWidth: 1)
//                    .background(.white.opacity(0.3))
//                    .cornerRadius(8)
            )
    }
}

struct ButtonStyleView: View {

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                Button("Login") { }
                    .buttonStyle(MainButtonStyle())
                Button("Sign up") { }
                    .buttonStyle(SecondaryButtonStyle())
                Button("I have an account") { }
                    .buttonStyle(OvaledButtonStyle())
            }.padding()

        }
    }
}

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
        .previewDevice("iPhone 8")
    }
}

