//
//  Disclaimer.swift
//  Umami3
//
//  Created by Francesca De Santis on 24/02/23.
//

import SwiftUI

struct DisclaimerView: View {
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
                    
                    Section{
                        Text("Remember to leave the \ncutting and cooking \ntasks to an adult.")
                        /*.font(.title)*/
                        ///remember to do not attach navigationTitle modifyer to the View, otherwise the title will change according the view and won't stay stable:
                        /*.navigationTitle("Hi, my name is Umami!")*/
                        /*.font(.title.weight(.heavy))*/
                            
                            
                            //.font(.system(size: 135, weight: .bold /*design: .serif*/))
                            .foregroundColor(.white)
                            .position(x:670, y:320)
                            .font(.custom("FuturaHandwritten", size: 100))
                            .fontWeight(.heavy)
                        
            
                    }
                    
                    
                    HStack {
                        
                        //For now Umami is button:
                        Section {
                            Button {
                            } label: {
                                Image("Umami")
                                    .position(x:350, y:260)
                                    .shadow(color: .black, radius: 4, x: 2, y: 2)
                            }
                            
                            
                            //subsection:
                                Section {
                                    //inserting the navigationlink to IntroCarboView inside the button:
                                    NavigationLink(destination: IntroCarbo(),label: {Text("Got it")
                                            .buttonStyle(.borderedProminent)
                                            .tint(.green)
                                            .controlSize(.large)
                                            .position(x:230, y:270)
                                            .font(.custom("FuturaHandwritten", size: 145))
                                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                                            /*.hoverEffect(.lift)*/
                                            })
                                        }
                                //subsection ended
                                    
                        }
                        /*.position(x:500, y:10)*/
                        
                    }
                    //VStack modifiers:
                    
                }
                
                .multilineTextAlignment(.center)
            }
            //is attached to ZStack:
            .ignoresSafeArea()
        }
    }
}

struct Disclaimer_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
