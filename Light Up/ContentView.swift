//
//  ContentView.swift
//  Light Up
//
//  Created by Can Seyhan on 12/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        NavigationView{
            LinearGradient(gradient: Gradient(colors: [Color(hex: 0x203032), Color(hex: 0x2F514F)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.vertical)
                .overlay(
                    
                    VStack(alignment: .center) {
                        
                        
                        
                        Image("Logo")
                            .resizable()
                            .frame(width: 145.36, height: 224.54).offset(CGSize(width: 0, height: -150)).offset(y: 100)
                        //Welcome to light up
                        Text("   Welcome to \n").font(.custom("AmaticSC-Bold", size: 24)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))) + Text("light up").font(.custom("AmaticSC-Bold", size: 52)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        
                        //Light up will help you use...
                        Text("Light up will help you use\n your flashlight\nfeature in a more\n professional way").font(.custom("Montserrat-Light", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(10)
                        //Rectangle 2
                        
                        NavigationLink(destination: Second_Page().navigationBarBackButtonHidden(true).navigationBarHidden(true))
                        {
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 82)
                                    .fill(Color(#colorLiteral(red: 0.12156862765550613, green: 0.1764705926179886, blue: 0.18431372940540314, alpha: 1)))
                                    .frame(width: 132, height: 42)
                                //Next
                                Text("Next").font(.custom("Montserrat Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            }
                        }.offset(y: 20)
                        HStack {
                            //Ellipse 1
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.24281249940395355, green: 0.3083333373069763, blue: 0.2532958388328552, alpha: 1)))
                                .frame(width: 10, height: 10)
                            //Ellipse 2
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.4000000059604645, green: 0.501960813999176, blue: 0.4156862795352936, alpha: 1)))
                                .frame(width: 10, height: 10)
                            //Ellipse 3
                            Circle()
                                .fill(Color(#colorLiteral(red: 0.4000000059604645, green: 0.501960813999176, blue: 0.4156862795352936, alpha: 1)))
                                .frame(width: 10, height: 10)
                            
                            
                        }.offset(y: 60)
                        
                    }
                    
                    
                    
                )
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
