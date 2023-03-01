//
//  ContentView.swift
//  Umami3
//
//  Created by Francesca De Santis on 24/02/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

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
                    
                    Section{
                        Text("Hi, my name is \nUmami!")
                        /*.font(.title)*/
                        ///remember to do not attach navigationTitle modifyer to the View, otherwise the title will change according the view and won't stay stable:
                        /*.navigationTitle("Hi, my name is Umami!")*/
                        /*.font(.title.weight(.heavy))*/
                            
                            
                            //.font(.system(size: 135, weight: .bold /*design: .serif*/))
                            .foregroundColor(.white)
                            .position(x:670, y:260)
                            .font(.custom("FuturaHandwritten", size: 128))
                            .fontWeight(.heavy)
                        
                        //subsection:
                        Section {
                            Text("Today I will help you \nmake a bentobox")
                                .foregroundColor(.white)
                                .position(x:670, y:180)
                                .font(.custom("FuturaHandwritten", size: 50))
                                .fontWeight(.heavy)
                        }
                    }
                    
                    
                    HStack {
                        
                        //For now Umami is button:
                        Section {
                            Button {
                            } label: {
                                Image("Umami")
                                    .position(x:350, y:90)
                                    .shadow(color: .black, radius: 4, x: 2, y: 2)
                            }
                            
                            
                            //subsection:
                                Section {
                                    //inserting the navigationlink to DisclaimerView inside the button:
                                    NavigationLink(destination: DisclaimerView(),label: {Text("Start")
                                            .buttonStyle(.borderedProminent)
                                            .tint(.green)
                                            .controlSize(.large)
                                            .position(x:230, y:100)
                                            .font(.custom("FuturaHandwritten", size: 145))
                                            .shadow(color: .black, radius: 4, x: 2, y: 2)
                                            /*.hoverEffect(.lift)*/
                                            })
                                        }
                                //subsection ended
                            
                                }
                        
                            }
                            
                        }
                        /*.position(x:500, y:10)*/
                        
                    }
                    //VStack modifiers:
                    
                }
                
                .multilineTextAlignment(.center)
                .ignoresSafeArea()
            }
            //is attached to ZStack:
            
        }
    

    
    /*func exectuteDelete() {
        print("Now deleting")
    }*/

    
    
    
    /*private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }*/

    /*private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { items[$0] }.forEach(viewContext.delete)

            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }*/


/*private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()*/



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}


