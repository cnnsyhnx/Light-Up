//
//  Second Page.swift
//  Light Up
//
//  Created by Can Seyhan on 13/11/2022.
//

import SwiftUI

struct Second_Page: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [Color(hex: 0x203032), Color(hex: 0x2F514F)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.vertical)
            .overlay(
                
                VStack(alignment: .center) {
                    
                    
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 145.36, height: 224.54).offset(CGSize(width: 0, height: -150)).offset(y: 100)
                    
                    
                    
                    
                    Text("We aim to give the best experience while you are in an emergency or any other condition in which you need your flashlight...").font(.custom("Montserrat Regular", size: 19)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center).padding(.leading).padding(.trailing).padding(.leading).padding(.trailing).offset(y: 0)
                    
                    
                    
                    
                    NavigationLink(destination: MainPage().navigationBarBackButtonHidden(true).navigationBarHidden(true))
                    {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 82)
                                .fill(Color(#colorLiteral(red: 0.12156862765550613, green: 0.1764705926179886, blue: 0.18431372940540314, alpha: 1)))
                                .frame(width: 132, height: 42)
                            //Next
                            Text("Next").font(.custom("Montserrat Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }
                    }.offset(y: 80)
                    
                    
                    HStack {
                        //Ellipse 1
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.4000000059604645, green: 0.501960813999176, blue: 0.4156862795352936, alpha: 1)))
                            .frame(width: 10, height: 10)
                        
                        //Ellipse 2
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.24281249940395355, green: 0.3083333373069763, blue: 0.2532958388328552, alpha: 1)))
                            .frame(width: 10, height: 10)
                        //Ellipse 3
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.4000000059604645, green: 0.501960813999176, blue: 0.4156862795352936, alpha: 1)))
                            .frame(width: 10, height: 10)
                        
                        
                    }.offset(y: 130)
                    
                }
                
                
                
            )
    }
}

struct Second_Page_Previews: PreviewProvider {
    static var previews: some View {
        Second_Page()
    }
}
