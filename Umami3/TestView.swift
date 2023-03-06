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

    var body: some View {
        ZStack {
            Image("WoodenTable")
            
            Image("BentoboxEmpty")
            Button("Show Credits") {
                showingModal.toggle()
            }
            .sheet(isPresented: $showingModal) {
                Button(action: {
                    showingModal.toggle()
                    
                }, label: {
                    Image("RiceButton")
                })
                //cazzariello per chiudere la modale
                    .presentationDetents([.medium, .large])
        }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
