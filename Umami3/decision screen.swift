//
//  decision screen.swift
//  Umami3
//
//  Created by Giada Saccucci on 02/03/23.
//

import SwiftUI

struct decision_screen: View {
    
    @State private var selected1 = false
    @State private var selected2 = false
    @State private var selected3 = false
    @State private var selected4 = false
    @State private var selected5 = false
    @State private var selected6 = false
    @State private var selected7 = false
    @State private var selected8 = false
    
    @ObservedObject var ingredientSelection = IngredientSelection()
    
    var body: some View {
        
        ZStack {
            
            Image("WoodenTable")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
           
            Grid{
                
                
                GridRow{
                    Text ("How would you cook?")
                        .frame(width: 999.0)
                        .position(x:750, y:260)
                        .foregroundColor(.white)
                        .font(.custom("FuturaHandwritten", size: 80))
                        .fontWeight(.heavy)
                }
                
                GridRow{
                    SelectButton(image: "ChineseRice", isSelected: $selected1)
                        .onTapGesture {
                            selected1.toggle()
                            if selected1 {
                                selected2 = false
                                selected3 = false
                                ingredientSelection.row1 = "ChineseRice"
                            }
                        }
                    .position(x:350, y:260)
                    
                    SelectButton(image: "SteamedRice", isSelected: $selected2)
                        .onTapGesture {
                            selected2.toggle()
                            if selected2 {
                                selected3 = false
                                selected1 = false
                                ingredientSelection.row1 = "SteamedRice"
                            }
                        }
                    .position(x:300, y:260)
                    
                    SelectButton(image: "PilafRice", isSelected: $selected3)
                        .onTapGesture {
                            selected3.toggle()
                            if selected3 {
                                selected1 = false
                                selected2 = false
                                ingredientSelection.row1 = "PilafRice"
                            }
                        }
                    .position(x:250, y:260)
                    
                }
                
                    
                
                GridRow{
                    SelectButton(image: "BoiledEgg", isSelected: $selected4)
                        .onTapGesture {
                            selected4.toggle()
                            if selected4 {
                                selected5 = false
                                selected6 = false
                                ingredientSelection.row2 = "BoiledEgg"
                            }
                        }
                    .position(x:350, y:260)
                    
                    SelectButton(image: "ScrambledEgg", isSelected: $selected5)
                        .onTapGesture {
                            selected5.toggle()
                            if selected5 {
                                selected4 = false
                                selected6 = false
                                ingredientSelection.row2 = "ScrambledEgg"
                            }
                        }
                    .position(x:300, y:260)
                    
                    SelectButton(image: "FriedEgg", isSelected: $selected6)
                        .onTapGesture {
                            selected6.toggle()
                            if selected6 {
                                selected4 = false
                                selected5 = false
                                ingredientSelection.row2 = "FriedEgg"
}
                        }
                    .position(x:250, y:260)
                    
                }
                
                GridRow{
                    SelectButton(image: "BoiledCarrot", isSelected: $selected7)
                        .onTapGesture {
                            selected7.toggle()
                            if selected7 {
                                selected8 = false
                                ingredientSelection.row3 = "BoiledCarrot"
                            }
                        }
                    .position(x:350, y:260)
                    
                    SelectButton(image: "RawCarrot", isSelected: $selected8)
                        .onTapGesture {
                            selected8.toggle()
                            if selected8 {
                                selected7 = false
                                ingredientSelection.row3 = "RawCarrot"
                            }
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
                        
                        
                            Button {
                            } label: {
                                Text("Ready")
                                    .underline()
                                    .buttonStyle(.borderedProminent)
                                    .tint(.green)
                                    .controlSize(.large)
                                    //.position(x:150, y:100)
                                    .font(.custom("FuturaHandwritten", size: 90))
                                    .shadow(color: .black, radius: 4, x: 2, y: 2)
                                    .position(x:300, y:0)
                            }
                            
                        
                        
                    }
                        
                    }
               
                    
                }
                .padding([.top, .leading], -600.0)
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
