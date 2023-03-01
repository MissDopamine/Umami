//
//  ModalView.swift
//  Umami3
//
//  Created by Francesca De Santis on 27/02/23.
//

import SwiftUI

struct ModalView: View {
    @Binding var isShowing: Bool
    
    let ingredients = Bundle.main.decode([Ingredient].self,from: "ingridients.geojson")
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                    .transition(.move(edge: .bottom))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
        .animation(.easeInOut)
    }
    
    var mainView: some View {
        HStack (spacing: 350){
            /*Text("Add your Carbohydrates...")
                .font(.custom("FuturaHandwritten", size: 50))
                .fontWeight(.heavy)
                .padding(.vertical, 40)
                .padding(.horizontal, 30)
                .frame(maxWidth:.infinity, maxHeight: 300, alignment: .topLeading)*/
            
            
            //you will need an HStack here soon:
            HStack {
                
            //RICE BUTTON
                HStack {
                       Text("Rice")
                            
                            
                        }
                        /*.scaledToFit()
                        .frame(width: 50, height: 50)
                        .position(x:483, y:55)*/
                    
                }
                    
                    //PASTA BUTTON
                VStack {
                    Button {
                    } label: {
                        Image("RiceButton")
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                        Text("Pasta")
                            .font(.custom("FuturaHandwritten", size: 50))
                            .fontWeight(.heavy)
                    }
                    /*.scaledToFit()
                    .frame(width: 50, height: 50)
                    .position(x:483, y:55)*/
                }
                    
                    //CEREAL BUTTON
                VStack {
                    Button {
                    } label: {
                        Image("RiceButton")
                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                            
                        Text("Cereal")
                            .font(.custom("FuturaHandwritten", size: 50))
                            .fontWeight(.heavy)
                    }
                    /*.scaledToFit()
                    .frame(width: 50, height: 50)
                    .position(x:483, y:55)*/
                }
                
                    
                    
                    /*Text("Rice")
                     Text("Pasta")
                     Text("Cereal")
                     }
                     .font(.custom("FuturaHandwritten", size: 65))
                     .frame(maxWidth:.infinity, maxHeight: 300, alignment: .center)*/
                    //buttons here:
                    
                
                }
                .frame(height: 405)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(25)
            
        }
    }
    
    
    struct ModalView_Previews: PreviewProvider {
        static var previews: some View {
            //ModalView(isShowing: .constant(true))
            ContentView()
        }
    }

