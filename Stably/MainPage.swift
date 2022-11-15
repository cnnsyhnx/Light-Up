//
//  MainPage.swift
//  Light Up
//
//  Created by Can Seyhan on 14/11/2022.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: 0x203032), Color(hex: 0x2F514F)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)
            VStack {
                Image("Logo")
                    .resizable()
                    .frame(width: 145.36, height: 224.54).offset(CGSize(width: 0, height: -150))
            }
            VStack {
                Button(action:{
                    toggleTorch(on: true)
                })
                       {
                    Image("Power").resizable().frame(width: 155, height: 155).offset(y: 140)
                           
                   }
                Text("Push!").offset(y:200).font(.custom("Montserrat-Light", size: 20)).foregroundColor(Color.white)
            }
        }
        
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
