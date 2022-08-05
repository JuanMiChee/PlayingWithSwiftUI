//
//  TestScreen.swift
//  emotionalTesting
//
//  Created by Juan Harrington on 31/07/22.
//

//
//  CircleProgressView.swift
//  Emotionall
//
//  Created by Angel Betancourt on 24/07/22.
//

import SwiftUI

struct CircularProgressView: View {
    @Binding var progress: Double

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(
                        Color.white.opacity(0.5),
                        lineWidth: geometry.size.width * 0.15
                    )
                Circle()
                    .trim(from: 0, to: CGFloat(progress))
                    .stroke(
                        Color.white,
                        style: StrokeStyle(
                            lineWidth: geometry.size.width * 0.15,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progress)
            }
        }
    }
}

struct CustomProgressViewUser: View {
    @State private var progress: Double = 0.0
    var body: some View {
        VStack {
            CircularProgressView(progress: $progress)
                .frame(width: 50, height: 50)
            CircularProgressView(progress: $progress)
                .frame(width: 100, height: 100)
            Slider(value: $progress, in: 0.0...1.0)

        }
        .padding()
    }
}

struct CircleProgressView_Previews: PreviewProvider {

    @State private var progress = 0.0

    static var previews: some View {
        ZStack {
            Color.blue
            CustomProgressViewUser()
        }.previewDevice("iPhone 11 Pro")
    }
}


