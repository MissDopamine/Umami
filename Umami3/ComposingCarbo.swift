//
//  ComposingCarbo.swift
//  Umami3
//
//  Created by Francesca De Santis on 27/02/23.
//

import SwiftUI

struct ComposingCarbo: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],animation: .default)
    private var items: FetchedResults<Item>
    
    @State private var showModal = false
    
    @State private var readyToNavigate = false
    
    //Main View:
    var body: some View {
        
        ///on ipad we need to substitute the nav view:
        NavigationStack {
            //spacing modifyer only attach to the Stack
            ZStack(alignment: .leading) {
                Image("WoodenTable")
                
                ///to pick another color add: /*Color(red: ..., green: ..., blue:... )*/
                /*.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)*/
                
                VStack {
                    //1.TEXT SECTION:
                    Section {
                        Text("Carbohydrates are our main fuel, \nlet's choose one!")
                        /*.font(.title)*/
                        ///remember to do not attach navigationTitle modifyer to the View, otherwise the title will change according the view and won't stay stable:
                        /*.navigationTitle("Hi, my name is Umami!")*/
                        /*.font(.title.weight(.heavy))*/
                        
                        
                        //.font(.system(size: 135, weight: .bold /*design: .serif*/))
                            .foregroundColor(.white)
                            .position(x:670, y:170)
                            .font(.custom("FuturaHandwritten", size: 70))
                            .fontWeight(.heavy)
                    }
                    
                    
                    //2.BENTOBOX SECTION:
                    ZStack {
                        
                        Button {
                            readyToNavigate.toggle()
                        } label: {
                            Image("BentoboxEmpty")
                        }
                        
                        
                        
                        
                        //ADD THE BENTO IMAGE HERE
                        //                        Button(action: { showModal = true }) {
                        //                            Image("BentoboxEmpty")
                        //                            //all the modifiers to make the bentobox bigger:
                        //                                .resizable()
                        //                            //.scaledToFit() is not strictly necessary now
                        //                                .frame(width: 900, height: 824)
                        //                                .clipped()
                        //                                .position(x:670, y:80)
                        //
                        //
                        //                            //3.HStack(CarboSection) + Vstack inside it (protein and veg section)
                        //                            HStack {
                        //                                Section {
                        //                                    //3a.CarboSection:
                        //                                    //inserting the navigationlink to IntroCarboView inside the button:
                        //
                        //
                        ////                                    NavigationLink(destination: ComposingCarbo(),label: {Image("BentoboxCarboSection")
                        ////                                            .resizable()
                        ////                                            .frame(width: 334, height: 486)
                        ////                                            .position(x:483, y:55)
                        ////                                            .opacity(0)
                        ////
                        ////
                        ////                                        /*.hoverEffect(.lift)*/
                        ////                                    })
                        //                                }
                        //                            }
                        //                        }
                        //outside tha ZStack:
                        //                        ModalView()
                    }
                    
                    
                    
                    
                    
                    
                    
                    //BUTTON + SECTION AFFIAN PROBABLY AN HSTACK:
                    
                    
                }
                
            }
            /*.position(x:500, y:10)*/
            .sheet(isPresented: $readyToNavigate) {
                ModalView(isShowing: .constant(true))
                    .presentationDetents([.fraction(0.23)])
            }

            
        }
        //VStack modifiers:
        .multilineTextAlignment(.center)
        .ignoresSafeArea()
    }
}



struct ComposingCarbo_Previews: PreviewProvider {
    static var previews: some View {
        ComposingCarbo()
    }
}
