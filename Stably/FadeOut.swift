//
//  FadeOut.swift
//  Light Up
//
//  Created by Can Seyhan on 14/11/2022.
//

import SwiftUI

struct FadeOut: View {
  @State private var fadeInOut = false
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).onAppear(){
            withAnimation(Animation.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                fadeInOut.toggle()
            }
        }.opacity(fadeInOut ? 0 : 1)
    }
}

struct FadeOut_Previews: PreviewProvider {
    static var previews: some View {
        FadeOut()
    }
}
