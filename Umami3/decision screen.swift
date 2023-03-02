//
//  decision screen.swift
//  Umami3
//
//  Created by Giada Saccucci on 02/03/23.
//

import SwiftUI

struct decision_screen: View {
    var body: some View {
        VStack{
            VStack{
                Text("How would you cook?")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                
                HStack{
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                }
                
                
                
                
                HStack{
                    Button {
                    } label: {
                        Image("BoiledEgg")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("ScrambledEgg")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("FriedEgg")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                }
                
                
                
                HStack{
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                    
                    Button {
                    } label: {
                        Image("RiceButton")
                            .foregroundColor(.black)
                            .position(x:350, y:260)
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                    }
                }
                
            }
            .padding([.bottom, .trailing], 200.0)
            
        }
    }
}

struct decision_screen_Previews: PreviewProvider {
    static var previews: some View {
        decision_screen()
    }
}
