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
        
        /*Text("Add your Carbohydrates...")
         .font(.custom("FuturaHandwritten", size: 50))
         .fontWeight(.heavy)
         .padding(.vertical, 40)
         .padding(.horizontal, 30)
         .frame(maxWidth:.infinity, maxHeight: 300, alignment: .topLeading)*/
        
        //
        
        NavigationStack {
            List {
                HStack {
                ForEach(ingredients, id: \.name) { section in
                    Image("RiceButton")
                    Image("RiceButton")
                    Image("RiceButton")
                }
                //attached to the list:
                shadow(color: .black, radius: 4, x: 2, y: 2)
            }
            }
        }
    }
        
        //modal modifiers:
        /*.frame(height: 405)
         .frame(maxWidth: .infinity)
         .background(Color.white)
         .cornerRadius(25)*/
        
    }
    

    struct ModalView_Previews: PreviewProvider {
        static var previews: some View {
            //ModalView(isShowing: .constant(true))
            ContentView()
        }
    }





