//
//  SelectableButton.swift
//  Umami3
//
//  Created by Francesca De Santis on 08/03/23.
//

import SwiftUI

struct SelectButton: View {
    @State var image: String
    @Binding var isSelected: Bool
    
    var body: some View {
        ZStack {
            Image(image)
                .resizable()
                .frame(width: 150.0, height: 150.0)
                .foregroundColor(.black)
                .opacity(isSelected ? 1 : 0.5)
                
                .shadow(color: .black, radius: 4, x: 2, y: 2)
        }
    }
}

struct SelectButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectButton(image: "", isSelected: .constant(false))
    }
}
