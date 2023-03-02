//
//  decision screen.swift
//  Umami3
//
//  Created by Giada Saccucci on 02/03/23.
//

import SwiftUI


struct decision_screen: View {
    
    var body: some View {
        
        ZStack {
            
                    Image("WoodenTable")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                 
            VStack {
                Text ("TestText")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 229.0)
                
                Grid{
                    GridRow{
                        Button {
                        } label: {
                            Image("ChineseRice")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("SteamedRice")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("PilafRice")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        
                    }
                    GridRow{
                        Button {
                        } label: {
                            Image("BoiledEgg")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("ScrambledEgg")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("FriedEgg")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        
                    }
                    
                    GridRow{
                        Button {
                        } label: {
                            Image("BoiledCarrot")
                                .resizable()
                                .frame(width: 150.0, height: 150.0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("RawCarrot")
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        Button {
                        } label: {
                            Image("")
                                .resizable()
                                .frame(width: 0, height: 0)
                                .foregroundColor(.black)
                                .position(x:350, y:260)
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                        
                    }
                }
                .padding([.top, .leading], -330.0)
                .frame(width: 700.0, height: 400.0)
                
                Button{} label: {
                    Image("ReadyButton")
                }
                
            }
                    
                }
                
               
            
            
            }
        }
    

struct decision_screen_Previews: PreviewProvider {
    static var previews: some View {
        decision_screen()
    }
}
