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
            
            
            
            
           
            
            
            Grid{
                
                
                GridRow{
                    Text ("How you would to cook?")
                        .frame(width: 999.0)
                        .position(x:750, y:260)
                        .foregroundColor(.white)
                        .font(.custom("FuturaHandwritten", size: 80))
                        .fontWeight(.heavy)
                        
                }
                
                
                GridRow{
                    Button {
                    } label: {
                        Image("ChineseRice")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                            
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:350, y:260)
                    
                    Button {
                    } label: {
                        Image("SteamedRice")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                            
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:300, y:260)
                    
                    Button {
                    } label: {
                        Image("PilafRice")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                           
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:250, y:260)
                    
                }
                
                    
                
                GridRow{
                    Button {
                    } label: {
                        Image("BoiledEgg")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                           
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:350, y:260)
                    
                    Button {
                    } label: {
                        Image("ScrambledEgg")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                           
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:300, y:260)
                    
                    Button {
                    } label: {
                        Image("FriedEgg")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                            
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:250, y:260)
                    
                }
                
                GridRow{
                    Button {
                    } label: {
                        Image("BoiledCarrot")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                            
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:350, y:260)
                    
                    Button {
                    } label: {
                      
                        Image("RawCarrot")
                            .resizable()
                            .frame(width: 150.0, height: 150.0)
                            .foregroundColor(.black)
                            
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    .position(x:300, y:260)
                    
                    Button {
                    } label: {
                        Image("")
                            .resizable()
                            .frame(width: 0, height: 0)
                            .foregroundColor(.black)
                            .position(x:250, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                        
                      }
                    GridRow{
                        Button{} label: {
                           
                            Text("Ready")
                                .underline()
                                .buttonStyle(.borderedProminent)
                                .tint(.green)
                                .controlSize(.large)
                                .position(x:150, y:100)
                                .font(.custom("FuturaHandwritten", size: 90))
                                .shadow(color: .black, radius: 4, x: 2, y: 2)
                        }
                            .position(x:300, y:0)
                    }
                        
                    }
               
                    
                }   .padding([.top, .leading], -600.0)
                .frame(width: 500.0, height: 300.0)
                .position(x:800, y: 600)
            }
   
            
           
            
            
        }
    }
    
    









struct decision_screen_Previews: PreviewProvider {
    static var previews: some View {
        decision_screen()
    }
}
