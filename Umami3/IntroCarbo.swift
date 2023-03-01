//
//  IntroCarbo.swift
//  Umami3
//
//  Created by Francesca De Santis on 26/02/23.
//

import SwiftUI

struct IntroCarbo: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>

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
                Text("Tap on your bento box to start to composing it.")
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
                    //ADD THE BENTO IMAGE HERE
                    Image("BentoboxEmpty")
                    //all the modifiers to make the bentobox bigger:
                        .resizable()
                    //.scaledToFit() is not strictly necessary now
                        .frame(width: 900, height: 824)
                        .clipped()
                        .position(x:670, y:80)
                        
                    
                //3.HStack(CarboSection) + Vstack inside it (protein and veg section)
                    HStack {
                            Section {
                                //3a.CarboSection:
                                //inserting the navigationlink to IntroCarboView inside the button:
                                NavigationLink(destination: ComposingCarbo(),label: {Image("BentoboxCarboSection")
                                        .resizable()
                                        .frame(width: 334, height: 486)
                                        .position(x:483, y:55)
                                        .opacity(0)
                                    
                                    
                                    /*.hoverEffect(.lift)*/
                                })
                            }
                                
                                
                                //Protein and vegetables section need to be in a subVstack inside the Hstack:
                        Section {
                                VStack {                                                              NavigationLink(destination: ComposingProtein(),label: {Image("BentoboxProteinSection")
                                        .resizable()
                                        .frame(width: 332, height: 230)
                                        .position(x:170, y:-70)
                                        .opacity(0)
                                    
                                    /*.hoverEffect(.lift)*/
                                })
                                NavigationLink(destination: ComposingVeg(),label: {Image("BentoboxVegetableSection")
                                        .resizable()
                                        .frame(width: 332, height: 229)
                                        .position(x:170, y:-80)
                                        .opacity(0)
                                    /*.hoverEffect(.lift)*/
                                })
                            }
                        }
                            }
                    
                            //subsection ended
                        }
                    
                    
                    
                    
                        
                    
                        
                        //BUTTON + SECTION AFFIAN PROBABLY AN HSTACK:
                        
                        
                            }
                            
                        }
                        /*.position(x:500, y:10)*/
                        
                    }
                    //VStack modifiers:
        .multilineTextAlignment(.center)
        .ignoresSafeArea()
                }
                
                
                
            }
            //is attached to ZStack:
            
        

struct IntroCarbo_Previews: PreviewProvider {
    static var previews: some View {
        IntroCarbo()
    }
}
