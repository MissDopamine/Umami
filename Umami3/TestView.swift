//
//  TestView.swift
//  Umami3
//
//  Created by Francesca De Santis on 06/03/23.
//

import SwiftUI

struct TestView: View {
    //logica della modale:
    @State private var showingModal = false
    ///
    //@State private var selectedCarb = ""
    
    @State private var box = "BentoboxEmpty"
    
    var body: some View {
        ZStack {
            Image("WoodenTable")
            Image(box)
            
            Section {
                Button("BentoboxCarboSection") {
                    showingModal.toggle()
                }
            }
            
            
            ///
            .popover(isPresented: $showingModal) {
                
                ///
                //@Binding private var $selectedCarb: String
                HStack {
                //BUTTON 1:
                    Button(action: {
                        showingModal.toggle()
                        //selectedCarb = "Rice"
                        box = "BentoboxFull"
                    }, label: {
                        Image("RiceButton")
                    })
                    
                //BUTTON 2:
                    Button(action: {
                        showingModal.toggle()
                    }, label: {
                        Image("PastaButton")
                    })
                    
                //BUTTON 3:
                    Button(action: {
                        showingModal.toggle()
                    }, label: {
                        Image("CerealButton")
                    })
                    
                    //cazzariello per chiudere la modale
                    //THE ORIGINAL ONE WRITTEN BY GIOVANNI:
                    
                    
                }.padding()
                
            }
           
        }
        .ignoresSafeArea()
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
